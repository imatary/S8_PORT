.class public final Landroid/icu/text/CollationKey;
.super Ljava/lang/Object;
.source "CollationKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CollationKey$BoundMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/text/CollationKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final MERGE_SEPERATOR_:I = 0x2


# instance fields
.field private m_hashCode_:I

.field private m_key_:[B

.field private m_length_:I

.field private m_source_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/CollationKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/CollationKey;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    iget v0, p2, Landroid/icu/text/RawCollationKey;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/CollationKey;->m_length_:I

    invoke-virtual {p2}, Landroid/icu/text/RawCollationKey;->releaseBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    sget-boolean v0, Landroid/icu/text/CollationKey;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    iget v2, p0, Landroid/icu/text/CollationKey;->m_length_:I

    aget-byte v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iput v1, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    iput p3, p0, Landroid/icu/text/CollationKey;->m_length_:I

    return-void
.end method

.method private getLength()I
    .locals 3

    iget v2, p0, Landroid/icu/text/CollationKey;->m_length_:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/icu/text/CollationKey;->m_length_:I

    return v2

    :cond_0
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_2

    move v1, v0

    :cond_1
    iput v1, p0, Landroid/icu/text/CollationKey;->m_length_:I

    iget v2, p0, Landroid/icu/text/CollationKey;->m_length_:I

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/icu/text/CollationKey;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v0

    and-int/lit16 v1, v3, 0xff

    iget-object v3, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v0

    and-int/lit16 v2, v3, 0xff

    if-ge v1, v2, :cond_0

    const/4 v3, -0x1

    return v3

    :cond_0
    if-le v1, v2, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    if-nez v1, :cond_2

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/text/CollationKey;

    invoke-virtual {p0, p1}, Landroid/icu/text/CollationKey;->compareTo(Landroid/icu/text/CollationKey;)I

    move-result v0

    return v0
.end method

.method public equals(Landroid/icu/text/CollationKey;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    if-nez p1, :cond_1

    return v4

    :cond_1
    move-object v1, p1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v0

    iget-object v3, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_3

    return v5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/icu/text/CollationKey;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    check-cast p1, Landroid/icu/text/CollationKey;

    invoke-virtual {p0, p1}, Landroid/icu/text/CollationKey;->equals(Landroid/icu/text/CollationKey;)Z

    move-result v0

    return v0
.end method

.method public getBound(II)Landroid/icu/text/CollationKey;
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-lez p2, :cond_5

    :goto_0
    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    array-length v4, v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v4, v4, v1

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v4, v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, -0x1

    if-eqz p2, :cond_0

    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    array-length v4, v4

    if-ne v2, v4, :cond_2

    :cond_0
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    :goto_1
    if-lez p2, :cond_4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Source collation key has only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " strength level. Call getBound() again "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with noOfLevels < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v4, v4, v2

    if-eqz v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    add-int v4, v2, p1

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [B

    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    invoke-static {v4, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    packed-switch p1, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Illegal boundType argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    move v1, v2

    :goto_2
    aput-byte v6, v3, v1

    new-instance v4, Landroid/icu/text/CollationKey;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3, v1}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    return-object v4

    :pswitch_1
    add-int/lit8 v1, v2, 0x1

    const/4 v4, 0x2

    aput-byte v4, v3, v2

    goto :goto_2

    :pswitch_2
    add-int/lit8 v1, v2, 0x1

    aput-byte v7, v3, v2

    add-int/lit8 v2, v1, 0x1

    aput-byte v7, v3, v1

    move v1, v2

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSourceString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget v3, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput v3, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    :cond_0
    :goto_0
    iget v3, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    return v3

    :cond_1
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    array-length v3, v3

    shr-int/lit8 v2, v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    goto :goto_0
.end method

.method public merge(Landroid/icu/text/CollationKey;)Landroid/icu/text/CollationKey;
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p1}, Landroid/icu/text/CollationKey;->getLength()I

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "CollationKey argument can not be null or of 0 length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-direct {p0}, Landroid/icu/text/CollationKey;->getLength()I

    move-result v10

    invoke-direct {p1}, Landroid/icu/text/CollationKey;->getLength()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x2

    new-array v3, v10, [B

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v10, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v10, v10, v0

    if-ltz v10, :cond_2

    iget-object v10, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v10, v10, v0

    if-lt v10, v12, :cond_3

    :cond_2
    add-int/lit8 v5, v4, 0x1

    iget-object v10, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v10, v10, v0

    aput-byte v10, v3, v4

    move v0, v1

    move v4, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v4, 0x1

    aput-byte v12, v3, v4

    move v4, v5

    :goto_1
    iget-object v10, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v10, v10, v6

    if-ltz v10, :cond_4

    iget-object v10, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v10, v10, v6

    if-lt v10, v12, :cond_5

    :cond_4
    add-int/lit8 v5, v4, 0x1

    iget-object v10, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v10, v10, v6

    aput-byte v10, v3, v4

    move v6, v7

    move v4, v5

    goto :goto_1

    :cond_5
    iget-object v10, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v10, v10, v0

    if-ne v10, v8, :cond_6

    iget-object v10, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v10, v10, v6

    if-ne v10, v8, :cond_6

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v4, 0x1

    aput-byte v8, v3, v4

    move v4, v5

    goto :goto_0

    :cond_6
    iget v10, p0, Landroid/icu/text/CollationKey;->m_length_:I

    sub-int v2, v10, v0

    if-lez v2, :cond_8

    iget-object v10, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    invoke-static {v10, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/2addr v4, v2

    :cond_7
    :goto_2
    aput-byte v9, v3, v4

    sget-boolean v10, Landroid/icu/text/CollationKey;->-assertionsDisabled:Z

    if-nez v10, :cond_a

    array-length v10, v3

    add-int/lit8 v10, v10, -0x1

    if-ne v4, v10, :cond_9

    :goto_3
    if-nez v8, :cond_a

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_8
    iget v10, p1, Landroid/icu/text/CollationKey;->m_length_:I

    sub-int v2, v10, v6

    if-lez v2, :cond_7

    iget-object v10, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    invoke-static {v10, v6, v3, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/2addr v4, v2

    goto :goto_2

    :cond_9
    move v8, v9

    goto :goto_3

    :cond_a
    new-instance v8, Landroid/icu/text/CollationKey;

    invoke-direct {v8, v13, v3, v4}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    return-object v8
.end method

.method public toByteArray()[B
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/icu/text/CollationKey;->getLength()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    new-array v1, v0, [B

    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1
.end method
