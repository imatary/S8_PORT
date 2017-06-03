.class final Ljava/nio/charset/CharsetDecoderICU;
.super Ljava/nio/charset/CharsetDecoder;
.source "CharsetDecoderICU.java"


# static fields
.field private static final INPUT_OFFSET:I = 0x0

.field private static final INVALID_BYTE_COUNT:I = 0x2

.field private static final MAX_CHARS_PER_BYTE:I = 0x2

.field private static final OUTPUT_OFFSET:I = 0x1


# instance fields
.field private allocatedInput:[B

.field private allocatedOutput:[C

.field private converterHandle:J

.field private final data:[I

.field private inEnd:I

.field private input:[B

.field private outEnd:I

.field private output:[C


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;FJ)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    iput-wide p3, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    invoke-static {p0, v0, v1}, Llibcore/icu/NativeConverter;->registerConverter(Ljava/lang/Object;J)V

    return-void
.end method

.method private getArray(Ljava/nio/ByteBuffer;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iput v1, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    if-eqz v1, :cond_1

    iget v1, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    array-length v2, v2

    if-le v1, v2, :cond_2

    :cond_1
    iget v1, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    iget v2, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    iput-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    return v3
.end method

.method private getArray(Ljava/nio/CharBuffer;)I
    .locals 2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    :cond_1
    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    :cond_2
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    const/4 v0, 0x0

    return v0
.end method

.method public static newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Ljava/nio/charset/CharsetDecoderICU;
    .locals 8

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p1}, Llibcore/icu/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->getAveCharsPerByte(J)F

    move-result v2

    new-instance v3, Ljava/nio/charset/CharsetDecoderICU;

    invoke-direct {v3, p0, v2, v0, v1}, Ljava/nio/charset/CharsetDecoderICU;-><init>(Ljava/nio/charset/Charset;FJ)V

    const-wide/16 v0, 0x0

    invoke-direct {v3}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception v4

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_0
    throw v4
.end method

.method private setPosition(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    return-void
.end method

.method private setPosition(Ljava/nio/CharBuffer;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    return-void

    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    aget v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    goto :goto_0
.end method

.method private updateCallback()V
    .locals 2

    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1, p0}, Llibcore/icu/NativeConverter;->setCallbackDecode(JLjava/nio/charset/CharsetDecoder;)V

    return-void
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    :try_start_0
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    iget v3, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    iget-object v4, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    iget v5, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    iget-object v6, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->decode(J[BI[CI[IZ)I

    move-result v8

    invoke-static {v8}, Llibcore/icu/ICU;->U_FAILURE(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xf

    if-ne v8, v0, :cond_1

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    return-object v0

    :cond_1
    const/16 v0, 0xa

    if-ne v8, v0, :cond_2

    :try_start_1
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    return-object v0

    :cond_2
    const/16 v0, 0xc

    if-ne v8, v0, :cond_3

    :try_start_2
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    return-object v0

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v8}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    throw v0

    :cond_4
    :try_start_4
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    return-object v0
.end method

.method protected final implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9

    :try_start_0
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    iget v3, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    iget-object v4, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    iget v5, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    iget-object v6, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->decode(J[BI[CI[IZ)I

    move-result v8

    invoke-static {v8}, Llibcore/icu/ICU;->U_FAILURE(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    if-ne v8, v0, :cond_0

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    return-object v0

    :cond_0
    const/16 v0, 0xb

    if-ne v8, v0, :cond_1

    :try_start_1
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    return-object v0

    :cond_1
    :try_start_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    throw v0
.end method

.method protected final implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V

    return-void
.end method

.method protected final implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V

    return-void
.end method

.method protected implReplaceWith(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V

    return-void
.end method

.method protected implReset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->resetByteToChar(J)V

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    aput v2, v0, v2

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    iput v2, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    iput v2, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    return-void
.end method
