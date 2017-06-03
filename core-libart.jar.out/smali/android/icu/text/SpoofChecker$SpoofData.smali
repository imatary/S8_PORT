.class Landroid/icu/text/SpoofChecker$SpoofData;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpoofData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;,
        Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;,
        Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;
    }
.end annotation


# static fields
.field private static final DATA_FORMAT:I = 0x43667520

.field private static final IS_ACCEPTABLE:Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;


# instance fields
.field fAnyCaseTrie:Landroid/icu/impl/Trie2;

.field fCFUKeys:[I

.field fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

.field fCFUStrings:Ljava/lang/String;

.field fCFUValues:[S

.field fLowerCaseTrie:Landroid/icu/impl/Trie2;

.field fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;-><init>(Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;)V

    sput-object v0, Landroid/icu/text/SpoofChecker$SpoofData;->IS_ACCEPTABLE:Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/icu/text/SpoofChecker$SpoofData;->IS_ACCEPTABLE:Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    const v1, 0x43667520

    invoke-static {p1, v1, v0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Landroid/icu/text/SpoofChecker$SpoofData;->readData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static getDefault()Landroid/icu/text/SpoofChecker$SpoofData;
    .locals 1

    invoke-static {}, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->-get0()Landroid/icu/text/SpoofChecker$SpoofData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    instance-of v1, p1, Landroid/icu/text/SpoofChecker$SpoofData;

    if-nez v1, :cond_0

    return v3

    :cond_0
    move-object v0, p1

    nop

    nop

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    :cond_7
    return v3

    :cond_8
    return v3

    :cond_9
    return v3

    :cond_a
    const/4 v1, 0x1

    return v1
.end method

.method readData(Ljava/nio/ByteBuffer;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    const v20, 0x3845fdef

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Bad Spoof Check Data."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v3, v1}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v9, v1}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v7, v1}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    new-array v0, v5, [Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    move-object/from16 v20, v0

    new-instance v21, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    invoke-direct/range {v21 .. v21}, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;-><init>()V

    aput-object v21, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    move-object/from16 v20, v0

    aget-object v20, v20, v14

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fLastString:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    move-object/from16 v20, v0

    aget-object v20, v20, v14

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fStrLength:I

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    invoke-static/range {p1 .. p1}, Landroid/icu/impl/Trie2;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    invoke-static/range {p1 .. p1}, Landroid/icu/impl/Trie2;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    move/from16 v0, v19

    new-array v0, v0, [Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v20, v0

    new-instance v21, Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>(Ljava/nio/ByteBuffer;)V

    aput-object v21, v20, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
