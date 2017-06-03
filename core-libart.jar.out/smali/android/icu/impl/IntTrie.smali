.class public Landroid/icu/impl/IntTrie;
.super Landroid/icu/impl/Trie;
.source "IntTrie.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private m_data_:[I

.field private m_initialValue_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/IntTrie;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/IntTrie;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(IILandroid/icu/impl/Trie$DataManipulate;)V
    .locals 6

    const/16 v4, 0x820

    new-array v4, v4, [C

    const/16 v5, 0x200

    invoke-direct {p0, v4, v5, p3}, Landroid/icu/impl/Trie;-><init>([CILandroid/icu/impl/Trie$DataManipulate;)V

    const/16 v1, 0x100

    if-eq p2, p1, :cond_0

    const/16 v1, 0x120

    :cond_0
    new-array v4, v1, [I

    iput-object v4, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    iput v1, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    iput p1, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x100

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    aput p1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eq p2, p1, :cond_3

    const/16 v4, 0x40

    int-to-char v0, v4

    const/16 v2, 0x6c0

    :goto_1
    const/16 v4, 0x6e0

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Landroid/icu/impl/Trie;->m_index_:[C

    aput-char v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x120

    const/16 v2, 0x100

    :goto_2
    if-ge v2, v3, :cond_3

    iget-object v4, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    aput p2, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie;-><init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V

    invoke-virtual {p0}, Landroid/icu/impl/Trie;->isIntTrie()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Data given does not belong to a int trie."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method constructor <init>([C[IIILandroid/icu/impl/Trie$DataManipulate;)V
    .locals 1

    invoke-direct {p0, p1, p4, p5}, Landroid/icu/impl/Trie;-><init>([CILandroid/icu/impl/Trie$DataManipulate;)V

    iput-object p2, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    array-length v0, v0

    iput v0, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    iput p3, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/icu/impl/Trie;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v2, p1, Landroid/icu/impl/IntTrie;

    if-eqz v2, :cond_1

    move-object v0, p1

    nop

    nop

    iget v2, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    iget v3, v0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    iget-object v3, v0, Landroid/icu/impl/IntTrie;->m_data_:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v4

    :cond_1
    return v4
.end method

.method public final getBMPValue(C)I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie;->getBMPOffset(C)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final getCodePointValue(I)I
    .locals 3

    if-ltz p1, :cond_0

    const v1, 0xd800

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/Trie;->m_index_:[C

    shr-int/lit8 v2, p1, 0x5

    aget-char v1, v1, v2

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v2, p1, 0x1f

    add-int v0, v1, v2

    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    aget v1, v1, v0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie;->getCodePointOffset(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    goto :goto_0
.end method

.method protected final getInitialValue()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    return v0
.end method

.method public final getLatin1LinearValue(C)I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    add-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    return v0
.end method

.method public final getLeadValue(C)I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie;->getLeadOffset(C)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method protected final getSurrogateOffset(CC)I
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "The field DataManipulate in this Trie is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    invoke-virtual {p0, p1}, Landroid/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v0

    if-lez v0, :cond_1

    and-int/lit16 v1, p2, 0x3ff

    int-to-char v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    move-result v1

    return v1

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public final getSurrogateValue(CC)I
    .locals 3

    invoke-static {p1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/IntTrie;->getSurrogateOffset(CC)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    aget v1, v1, v0

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Argument characters do not form a supplementary character"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    return v1
.end method

.method public final getTrailValue(IC)I
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "The field DataManipulate in this Trie is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    invoke-interface {v1, p1}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    and-int/lit16 v2, p2, 0x3ff

    int-to-char v2, v2

    invoke-virtual {p0, v0, v2}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    move-result v2

    aget v1, v1, v2

    return v1

    :cond_1
    iget v1, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    return v1
.end method

.method protected final getValue(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    aget v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 2

    sget-boolean v0, Landroid/icu/impl/IntTrie;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method protected final unserialize(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/icu/impl/Trie;->unserialize(Ljava/nio/ByteBuffer;)V

    iget v0, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    return-void
.end method
