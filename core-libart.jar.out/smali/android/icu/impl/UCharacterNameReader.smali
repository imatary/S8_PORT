.class final Landroid/icu/impl/UCharacterNameReader;
.super Ljava/lang/Object;
.source "UCharacterNameReader.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# static fields
.field private static final ALG_INFO_SIZE_:I = 0xc

.field private static final DATA_FORMAT_ID_:I = 0x756e616d

.field private static final GROUP_INFO_SIZE_:I = 0x3


# instance fields
.field private m_algnamesindex_:I

.field private m_byteBuffer_:Ljava/nio/ByteBuffer;

.field private m_groupindex_:I

.field private m_groupstringindex_:I

.field private m_tokenstringindex_:I


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x756e616d

    invoke-static {p1, v0, p0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    iput-object p1, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private readAlg()Landroid/icu/impl/UCharacterName$AlgorithmName;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x0

    new-instance v5, Landroid/icu/impl/UCharacterName$AlgorithmName;

    invoke-direct {v5}, Landroid/icu/impl/UCharacterName$AlgorithmName;-><init>()V

    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    invoke-virtual {v5, v4, v3, v8, v9}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setInfo(IIBB)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    return-object v10

    :cond_0
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v6

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1

    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-static {v10, v9, v11}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setFactor([C)Z

    shl-int/lit8 v10, v9, 0x1

    sub-int/2addr v6, v10

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    int-to-char v0, v10

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    int-to-char v0, v10

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setPrefix(Ljava/lang/String;)Z

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0xc

    add-int/lit8 v10, v10, 0x1

    sub-int/2addr v6, v10

    if-lez v6, :cond_3

    new-array v7, v6, [B

    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v7}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setFactorString([B)Z

    :cond_3
    return-object v5
.end method


# virtual methods
.method protected authenticate([B[B)Z
    .locals 1

    const v0, 0x756e616d

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getVersionByteArrayFromCompactInt(I)[B

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/icu/impl/UCharacterNameReader;->isDataVersionAcceptable([B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataVersionAcceptable([B)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected read(Landroid/icu/impl/UCharacterName;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    iput v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_tokenstringindex_:I

    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    iput v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupindex_:I

    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    iput v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupstringindex_:I

    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    iput v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_algnamesindex_:I

    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-static {v9, v2, v11}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v7

    iget v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupindex_:I

    iget v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_tokenstringindex_:I

    sub-int v6, v9, v10

    new-array v8, v6, [B

    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v7, v8}, Landroid/icu/impl/UCharacterName;->setToken([C[B)Z

    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    const/4 v9, 0x3

    invoke-virtual {p1, v2, v9}, Landroid/icu/impl/UCharacterName;->setGroupCountSize(II)Z

    mul-int/lit8 v2, v2, 0x3

    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-static {v9, v2, v11}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v3

    iget v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_algnamesindex_:I

    iget v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupstringindex_:I

    sub-int v6, v9, v10

    new-array v4, v6, [B

    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3, v4}, Landroid/icu/impl/UCharacterName;->setGroup([C[B)Z

    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-array v0, v2, [Landroid/icu/impl/UCharacterName$AlgorithmName;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    invoke-direct {p0}, Landroid/icu/impl/UCharacterNameReader;->readAlg()Landroid/icu/impl/UCharacterName$AlgorithmName;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "unames.icu read error: Algorithmic names creation error"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    aput-object v1, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/icu/impl/UCharacterName;->setAlgorithm([Landroid/icu/impl/UCharacterName$AlgorithmName;)Z

    return-void
.end method
