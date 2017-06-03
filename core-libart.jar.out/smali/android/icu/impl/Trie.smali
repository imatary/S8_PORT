.class public abstract Landroid/icu/impl/Trie;
.super Ljava/lang/Object;
.source "Trie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Trie$DataManipulate;,
        Landroid/icu/impl/Trie$DefaultGetFoldingOffset;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field protected static final BMP_INDEX_LENGTH:I = 0x800

.field protected static final DATA_BLOCK_LENGTH:I = 0x20

.field protected static final HEADER_LENGTH_:I = 0x10

.field protected static final HEADER_OPTIONS_DATA_IS_32_BIT_:I = 0x100

.field protected static final HEADER_OPTIONS_INDEX_SHIFT_:I = 0x4

.field protected static final HEADER_OPTIONS_LATIN1_IS_LINEAR_MASK_:I = 0x200

.field private static final HEADER_OPTIONS_SHIFT_MASK_:I = 0xf

.field protected static final HEADER_SIGNATURE_:I = 0x54726965

.field protected static final INDEX_STAGE_1_SHIFT_:I = 0x5

.field protected static final INDEX_STAGE_2_SHIFT_:I = 0x2

.field protected static final INDEX_STAGE_3_MASK_:I = 0x1f

.field protected static final LEAD_INDEX_OFFSET_:I = 0x140

.field protected static final SURROGATE_BLOCK_BITS:I = 0x5

.field protected static final SURROGATE_BLOCK_COUNT:I = 0x20

.field protected static final SURROGATE_MASK_:I = 0x3ff


# instance fields
.field protected m_dataLength_:I

.field protected m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

.field protected m_dataOffset_:I

.field protected m_index_:[C

.field private m_isLatin1Linear_:Z

.field private m_options_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/Trie;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/Trie;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Landroid/icu/impl/Trie;->m_options_:I

    invoke-direct {p0, v0}, Landroid/icu/impl/Trie;->checkHeader(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "ICU data file error: Trie header authentication failed, please check if you have the most updated ICU data file"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz p2, :cond_2

    iput-object p2, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    :goto_0
    iget v2, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie;->unserialize(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_2
    new-instance v2, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;

    invoke-direct {v2, v3}, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;-><init>(Landroid/icu/impl/Trie$DefaultGetFoldingOffset;)V

    iput-object v2, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    goto :goto_0
.end method

.method protected constructor <init>([CILandroid/icu/impl/Trie$DataManipulate;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/icu/impl/Trie;->m_options_:I

    if-eqz p3, :cond_1

    iput-object p3, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    :goto_0
    iget v1, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    iput-object p1, p0, Landroid/icu/impl/Trie;->m_index_:[C

    iget-object v0, p0, Landroid/icu/impl/Trie;->m_index_:[C

    array-length v0, v0

    iput v0, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    return-void

    :cond_1
    new-instance v1, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;

    invoke-direct {v1, v2}, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;-><init>(Landroid/icu/impl/Trie$DefaultGetFoldingOffset;)V

    iput-object v1, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    goto :goto_0
.end method

.method private final checkHeader(I)Z
    .locals 3

    const/4 v2, 0x0

    const v0, 0x54726965

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/icu/impl/Trie;->m_options_:I

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Landroid/icu/impl/Trie;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/Trie;

    iget-boolean v2, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    iget-boolean v3, v0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/impl/Trie;->m_options_:I

    iget v3, v0, Landroid/icu/impl/Trie;->m_options_:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    iget v3, v0, Landroid/icu/impl/Trie;->m_dataLength_:I

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Landroid/icu/impl/Trie;->m_index_:[C

    iget-object v2, v0, Landroid/icu/impl/Trie;->m_index_:[C

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    :cond_2
    return v1
.end method

.method protected final getBMPOffset(C)I
    .locals 1

    const v0, 0xd800

    if-lt p1, v0, :cond_0

    const v0, 0xdbff

    if-gt p1, v0, :cond_0

    const/16 v0, 0x140

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    goto :goto_0
.end method

.method protected final getCodePointOffset(I)I
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-gez p1, :cond_0

    return v1

    :cond_0
    const v0, 0xd800

    if-ge p1, v0, :cond_1

    int-to-char v0, p1

    invoke-virtual {p0, v2, v0}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    int-to-char v0, p1

    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie;->getBMPOffset(C)I

    move-result v0

    return v0

    :cond_2
    const v0, 0x10ffff

    if-gt p1, v0, :cond_3

    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    and-int/lit16 v1, p1, 0x3ff

    int-to-char v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/Trie;->getSurrogateOffset(CC)I

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method protected abstract getInitialValue()I
.end method

.method protected final getLeadOffset(C)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    return v0
.end method

.method protected final getRawOffset(IC)I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/Trie;->m_index_:[C

    shr-int/lit8 v1, p2, 0x5

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p2, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public getSerializedDataSize()I
    .locals 2

    iget v1, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, 0x10

    invoke-virtual {p0}, Landroid/icu/impl/Trie;->isCharTrie()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/Trie;->isIntTrie()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected abstract getSurrogateOffset(CC)I
.end method

.method protected abstract getValue(I)I
.end method

.method public hashCode()I
    .locals 2

    sget-boolean v0, Landroid/icu/impl/Trie;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method protected final isCharTrie()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected final isIntTrie()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isLatin1Linear()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    return v0
.end method

.method protected unserialize(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget v0, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Trie;->m_index_:[C

    return-void
.end method
