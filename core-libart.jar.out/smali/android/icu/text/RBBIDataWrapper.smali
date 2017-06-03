.class final Landroid/icu/text/RBBIDataWrapper;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBIDataWrapper$IsAcceptable;,
        Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;,
        Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;
    }
.end annotation


# static fields
.field static final ACCEPTING:I = 0x0

.field static final DATA_FORMAT:I = 0x42726b20

.field static final DH_CATCOUNT:I = 0x3

.field static final DH_FORMATVERSION:I = 0x1

.field static final DH_FTABLE:I = 0x4

.field static final DH_FTABLELEN:I = 0x5

.field static final DH_LENGTH:I = 0x2

.field static final DH_MAGIC:I = 0x0

.field static final DH_RTABLE:I = 0x6

.field static final DH_RTABLELEN:I = 0x7

.field static final DH_RULESOURCE:I = 0xe

.field static final DH_RULESOURCELEN:I = 0xf

.field static final DH_SFTABLE:I = 0x8

.field static final DH_SFTABLELEN:I = 0x9

.field static final DH_SIZE:I = 0x18

.field static final DH_SRTABLE:I = 0xa

.field static final DH_SRTABLELEN:I = 0xb

.field static final DH_STATUSTABLE:I = 0x10

.field static final DH_STATUSTABLELEN:I = 0x11

.field static final DH_TRIE:I = 0xc

.field static final DH_TRIELEN:I = 0xd

.field static final FLAGS:I = 0x4

.field static final FORMAT_VERSION:I = 0x3010000

.field private static final IS_ACCEPTABLE:Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

.field static final LOOKAHEAD:I = 0x1

.field static final NEXTSTATES:I = 0x4

.field static final NUMSTATES:I = 0x0

.field static final RBBI_BOF_REQUIRED:I = 0x2

.field static final RBBI_LOOKAHEAD_HARD_BREAK:I = 0x1

.field static final RESERVED:I = 0x3

.field static final ROWLEN:I = 0x2

.field private static final ROW_DATA:I = 0x8

.field static final TAGIDX:I = 0x2

.field static fTrieFoldingFunc:Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;


# instance fields
.field fFTable:[S

.field fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

.field fRTable:[S

.field fRuleSource:Ljava/lang/String;

.field fSFTable:[S

.field fSRTable:[S

.field fStatusTable:[I

.field fTrie:Landroid/icu/impl/CharTrie;

.field private isBigEndian:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/RBBIDataWrapper$IsAcceptable;-><init>(Landroid/icu/text/RBBIDataWrapper$IsAcceptable;)V

    sput-object v0, Landroid/icu/text/RBBIDataWrapper;->IS_ACCEPTABLE:Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

    new-instance v0, Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;

    invoke-direct {v0}, Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;-><init>()V

    sput-object v0, Landroid/icu/text/RBBIDataWrapper;->fTrieFoldingFunc:Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dumpCharCategories()V
    .locals 11

    iget-object v8, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v5, v8, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    add-int/lit8 v8, v5, 0x1

    new-array v0, v8, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v3, -0x1

    add-int/lit8 v8, v5, 0x1

    new-array v4, v8, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v8, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v8, v8, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-gt v1, v8, :cond_0

    const-string/jumbo v8, ""

    aput-object v8, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "\nCharacter Categories"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "--------------------"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    const v8, 0x10ffff

    if-gt v2, v8, :cond_2

    iget-object v8, p0, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    invoke-virtual {v8, v2}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v1

    and-int/lit16 v1, v1, -0x4001

    if-ltz v1, :cond_1

    iget-object v8, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v8, v8, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-le v1, v8, :cond_4

    :cond_1
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error, bad category "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " for char "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    if-eq v6, v7, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v8, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v8, v8, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-gt v1, v8, :cond_8

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x5

    invoke-static {v1, v10}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-ne v1, v3, :cond_5

    move v6, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    if-ltz v3, :cond_7

    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    aget v9, v4, v3

    add-int/lit8 v9, v9, 0x46

    if-le v8, v9, :cond_6

    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xa

    aput v8, v4, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n       "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    if-eq v6, v7, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    :cond_7
    move v3, v1

    move v6, v2

    move v7, v2

    goto :goto_3

    :cond_8
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method private dumpRow([SI)V
    .locals 5

    const/4 v4, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x4

    invoke-static {p2, v3}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result v2

    add-int/lit8 v3, v2, 0x0

    aget-short v3, p1, v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x0

    aget-short v3, p1, v3

    invoke-static {v3, v4}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v3, v2, 0x1

    aget-short v3, p1, v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-short v3, p1, v3

    invoke-static {v3, v4}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v2, 0x2

    aget-short v3, p1, v3

    invoke-static {v3, v4}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-ge v0, v3, :cond_2

    add-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v0

    aget-short v3, p1, v3

    invoke-static {v3, v4}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    const-string/jumbo v3, "     "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "     "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private dumpTable([S)V
    .locals 5

    if-nez p1, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "  -- null -- "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " Row  Acc Look  Tag"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-ge v1, v3, :cond_1

    const/4 v3, 0x5

    invoke-static {v1, v3}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    const/4 v2, 0x0

    :goto_3
    invoke-direct {p0, p1}, Landroid/icu/text/RBBIDataWrapper;->getStateTableNumStates([S)I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-direct {p0, p1, v2}, Landroid/icu/text/RBBIDataWrapper;->dumpRow([SI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    goto :goto_0
.end method

.method static get(Ljava/nio/ByteBuffer;)Landroid/icu/text/RBBIDataWrapper;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/icu/text/RBBIDataWrapper;

    invoke-direct {v0}, Landroid/icu/text/RBBIDataWrapper;-><init>()V

    sget-object v2, Landroid/icu/text/RBBIDataWrapper;->IS_ACCEPTABLE:Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

    const v5, 0x42726b20

    invoke-static {p0, v5, v2}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/icu/text/RBBIDataWrapper;->isBigEndian:Z

    new-instance v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-direct {v2}, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;-><init>()V

    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fVersion:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v2, v4

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v2, v3

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    const/4 v6, 0x2

    aput-byte v5, v2, v6

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v2, v7

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fLength:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrieLen:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    const/16 v2, 0x18

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    const v5, 0xb1a0

    if-ne v2, v5, :cond_0

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fVersion:I

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    aget-byte v2, v2, v4

    if-eq v2, v7, :cond_2

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Break Iterator Rule Data Magic Number Incorrect, or unsupported data version."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v2, v4

    goto/16 :goto_0

    :cond_2
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    const/16 v3, 0x60

    if-lt v2, v3, :cond_3

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    iget-object v3, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fLength:I

    if-le v2, v3, :cond_4

    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Break iterator Rule data corrupt"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    add-int/lit8 v2, v2, -0x60

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    and-int/lit8 v3, v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    add-int/2addr v1, v2

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    and-int/lit8 v3, v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    add-int/2addr v1, v2

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    if-lez v2, :cond_5

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    and-int/lit8 v3, v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    add-int/2addr v1, v2

    :cond_5
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    if-lez v2, :cond_6

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    and-int/lit8 v3, v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    add-int/2addr v1, v2

    :cond_6
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    new-instance v2, Landroid/icu/impl/CharTrie;

    sget-object v3, Landroid/icu/text/RBBIDataWrapper;->fTrieFoldingFunc:Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;

    invoke-direct {v2, p0, v3}, Landroid/icu/impl/CharTrie;-><init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V

    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    if-le v1, v2, :cond_7

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Break iterator Rule data corrupt"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    div-int/lit8 v2, v2, 0x4

    iget-object v3, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    and-int/lit8 v3, v3, 0x3

    invoke-static {p0, v2, v3}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    add-int/2addr v1, v2

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    if-le v1, v2, :cond_8

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Break iterator Rule data corrupt"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    and-int/lit8 v3, v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    sget-object v2, Landroid/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Landroid/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_9

    invoke-virtual {v0}, Landroid/icu/text/RBBIDataWrapper;->dump()V

    :cond_9
    return-object v0
.end method

.method private getStateTableNumStates([S)I
    .locals 4

    const v3, 0xffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/icu/text/RBBIDataWrapper;->isBigEndian:Z

    if-eqz v0, :cond_0

    aget-short v0, p1, v1

    shl-int/lit8 v0, v0, 0x10

    aget-short v1, p1, v2

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    return v0

    :cond_0
    aget-short v0, p1, v2

    shl-int/lit8 v0, v0, 0x10

    aget-short v1, p1, v1

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    return v0
.end method

.method public static intToHexString(II)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static intToString(II)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method dump()V
    .locals 3

    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    array-length v0, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "RBBI Data Wrapper dump ..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Forward State Table"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    invoke-direct {p0, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable([S)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Reverse State Table"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    invoke-direct {p0, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable([S)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Forward Safe Points Table"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    invoke-direct {p0, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable([S)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Reverse Safe Points Table"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    invoke-direct {p0, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable([S)V

    invoke-direct {p0}, Landroid/icu/text/RBBIDataWrapper;->dumpCharCategories()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Source Rules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method getRowIndex(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v0, v0, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    add-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method getStateTableFlags([S)I
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/RBBIDataWrapper;->isBigEndian:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    aget-short v0, p1, v0

    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
