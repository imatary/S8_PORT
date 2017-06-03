.class final Landroid/icu/impl/UCharacterName$AlgorithmName;
.super Ljava/lang/Object;
.source "UCharacterName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AlgorithmName"
.end annotation


# static fields
.field static final TYPE_0_:I = 0x0

.field static final TYPE_1_:I = 0x1


# instance fields
.field private m_factor_:[C

.field private m_factorstring_:[B

.field private m_prefix_:Ljava/lang/String;

.field private m_rangeend_:I

.field private m_rangestart_:I

.field private m_type_:B

.field private m_utilIntBuffer_:[I

.field private m_utilStringBuffer_:Ljava/lang/StringBuffer;

.field private m_variant_:B


# direct methods
.method static synthetic -get0(Landroid/icu/impl/UCharacterName$AlgorithmName;)I
    .locals 1

    iget v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    return v0
.end method

.method static synthetic -get1(Landroid/icu/impl/UCharacterName$AlgorithmName;)I
    .locals 1

    iget v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    return v0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    return-void
.end method

.method private compareFactorString([IILjava/lang/String;I)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    array-length v3, v5

    if-eqz p1, :cond_0

    if-eq p2, v3, :cond_1

    :cond_0
    return v7

    :cond_1
    const/4 v0, 0x0

    move v4, p4

    add-int/lit8 v3, v3, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v3, :cond_4

    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v1, v5, v2

    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v6, p1, v2

    invoke-static {v5, v0, v6}, Landroid/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v0

    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    invoke-static {p3, v5, v4, v0}, Landroid/icu/impl/UCharacterUtility;->compareNullTermByteSubString(Ljava/lang/String;[BII)I

    move-result v4

    if-gez v4, :cond_2

    return v7

    :cond_2
    if-eq v2, v3, :cond_3

    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v6, p1, v2

    sub-int v6, v1, v6

    invoke-static {v5, v0, v6}, Landroid/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_5

    return v7

    :cond_5
    const/4 v5, 0x1

    return v5
.end method

.method private getFactorString([II)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    array-length v3, v4

    if-eqz p1, :cond_0

    if-eq p2, v3, :cond_1

    :cond_0
    return-object v5

    :cond_1
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    add-int/lit8 v3, v3, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v3, :cond_3

    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v1, v4, v2

    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v6, p1, v2

    invoke-static {v4, v0, v6}, Landroid/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v0

    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    invoke-static {v4, v6, v0}, Landroid/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    move-result v0

    if-eq v2, v3, :cond_2

    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v6, p1, v2

    sub-int v6, v1, v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v0, v6}, Landroid/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method add([II)I
    .locals 9

    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/icu/impl/UCharacterName;->-wrap1([ILjava/lang/String;)I

    move-result v3

    iget-byte v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    if-le v3, p2, :cond_3

    return v3

    :pswitch_0
    iget-byte v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    add-int/2addr v3, v5

    goto :goto_0

    :pswitch_1
    iget-byte v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    add-int/lit8 v2, v5, -0x1

    :goto_1
    if-lez v2, :cond_0

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v1, v5, v2

    :goto_2
    if-lez v1, :cond_2

    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    invoke-static {v5, v7, v0}, Landroid/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    move-result v0

    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-static {p1, v5}, Landroid/icu/impl/UCharacterName;->-wrap0([ILjava/lang/StringBuffer;)I

    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-le v5, v4, :cond_1

    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    :cond_1
    monitor-exit v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_2
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    return p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method appendName(ILjava/lang/StringBuffer;)V
    .locals 7

    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    int-to-long v4, p1

    iget-byte v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    invoke-static {v4, v5, v6}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    iget v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    sub-int v3, p1, v4

    iget-object v2, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    monitor-enter v5

    :try_start_0
    iget-byte v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-lez v1, :cond_0

    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v4, v4, v1

    and-int/lit16 v0, v4, 0xff

    rem-int v4, v3, v0

    aput v4, v2, v1

    div-int/2addr v3, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    aput v3, v2, v4

    iget-byte v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    invoke-direct {p0, v2, v4}, Landroid/icu/impl/UCharacterName$AlgorithmName;->getFactorString([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method contains(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method getChar(Ljava/lang/String;)I
    .locals 11

    const/4 v9, 0x0

    const/4 v10, -0x1

    iget-object v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v6, :cond_1

    iget-object v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-byte v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    packed-switch v8, :pswitch_data_0

    :cond_0
    return v10

    :cond_1
    return v10

    :pswitch_0
    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    iget v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    if-gt v8, v7, :cond_0

    iget v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v7, v8, :cond_0

    return v7

    :catch_0
    move-exception v1

    return v10

    :pswitch_1
    iget v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    :goto_0
    iget v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    if-gt v0, v8, :cond_0

    iget v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    sub-int v5, v0, v8

    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    iget-object v9, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    monitor-enter v9

    :try_start_1
    iget-byte v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    add-int/lit8 v3, v8, -0x1

    :goto_1
    if-lez v3, :cond_2

    iget-object v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v8, v8, v3

    and-int/lit16 v2, v8, 0xff

    rem-int v8, v5, v2

    aput v8, v4, v3

    div-int/2addr v5, v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    aput v5, v4, v8

    iget-byte v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    invoke-direct {p0, v4, v8, p1, v6}, Landroid/icu/impl/UCharacterName$AlgorithmName;->compareFactorString([IILjava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_3

    monitor-exit v9

    return v0

    :cond_3
    monitor-exit v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setFactor([C)Z
    .locals 2

    array-length v0, p1

    iget-byte v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setFactorString([B)Z
    .locals 1

    iput-object p1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    const/4 v0, 0x1

    return v0
.end method

.method setInfo(IIBB)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    const v0, 0x10ffff

    if-gt p2, v0, :cond_1

    if-eqz p3, :cond_0

    if-ne p3, v2, :cond_1

    :cond_0
    iput p1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    iput p2, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    iput-byte p3, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    iput-byte p4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    return v2

    :cond_1
    return v1
.end method

.method setPrefix(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
