.class public final Landroid/icu/impl/ICUResourceBundleReader;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundleReader$Array16;,
        Landroid/icu/impl/ICUResourceBundleReader$Array32;,
        Landroid/icu/impl/ICUResourceBundleReader$Array;,
        Landroid/icu/impl/ICUResourceBundleReader$Container;,
        Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;,
        Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;,
        Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;,
        Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;,
        Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;,
        Landroid/icu/impl/ICUResourceBundleReader$Table1632;,
        Landroid/icu/impl/ICUResourceBundleReader$Table16;,
        Landroid/icu/impl/ICUResourceBundleReader$Table32;,
        Landroid/icu/impl/ICUResourceBundleReader$Table;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache; = null

.field private static final DATA_FORMAT:I = 0x52657342

.field private static final DEBUG:Z = false

.field private static final EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

.field private static final EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Array;

.field private static final EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

.field private static final ICU_RESOURCE_SUFFIX:Ljava/lang/String; = ".res"

.field private static final IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

.field static final LARGE_SIZE:I = 0x18

.field private static final NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

.field private static PUBLIC_TYPES:[I = null

.field private static final URES_ATT_IS_POOL_BUNDLE:I = 0x2

.field private static final URES_ATT_NO_FALLBACK:I = 0x1

.field private static final URES_ATT_USES_POOL_BUNDLE:I = 0x4

.field private static final URES_INDEX_16BIT_TOP:I = 0x6

.field private static final URES_INDEX_ATTRIBUTES:I = 0x5

.field private static final URES_INDEX_BUNDLE_TOP:I = 0x3

.field private static final URES_INDEX_KEYS_TOP:I = 0x1

.field private static final URES_INDEX_LENGTH:I = 0x0

.field private static final URES_INDEX_MAX_TABLE_LENGTH:I = 0x4

.field private static final URES_INDEX_POOL_CHECKSUM:I = 0x7

.field private static final emptyByteBuffer:Ljava/nio/ByteBuffer;

.field private static final emptyBytes:[B

.field private static final emptyChars:[C

.field private static final emptyInts:[I

.field private static final emptyString:Ljava/lang/String; = ""


# instance fields
.field private b16BitUnits:Ljava/nio/CharBuffer;

.field private bytes:Ljava/nio/ByteBuffer;

.field private dataVersion:I

.field private isPoolBundle:Z

.field private keyBytes:[B

.field private localKeyLimit:I

.field private noFallback:Z

.field private poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

.field private poolCheckSum:I

.field private poolStringIndex16Limit:I

.field private poolStringIndexLimit:I

.field private resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

.field private rootRes:I

.field private usesPoolBundle:Z


# direct methods
.method static synthetic -get0()Landroid/icu/impl/ICUResourceBundleReader;
    .locals 1

    sget-object v0, Landroid/icu/impl/ICUResourceBundleReader;->NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

    return-object v0
.end method

.method static synthetic -get1()[I
    .locals 1

    sget-object v0, Landroid/icu/impl/ICUResourceBundleReader;->PUBLIC_TYPES:[I

    return-object v0
.end method

.method static synthetic -get2(Landroid/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    return-object v0
.end method

.method static synthetic -get3(Landroid/icu/impl/ICUResourceBundleReader;)I
    .locals 1

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndex16Limit:I

    return v0
.end method

.method static synthetic -get4(Landroid/icu/impl/ICUResourceBundleReader;)I
    .locals 1

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/icu/impl/ICUResourceBundleReader;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->isNoInheritanceMarker(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/icu/impl/ICUResourceBundleReader;I)[C
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTable16KeyOffsets(I)[C

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTableLength(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getKey16String(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getKey32String(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->setKeyFromKey16(ILandroid/icu/impl/UResource$Key;)V

    return-void
.end method

.method static synthetic -wrap14(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->setKeyFromKey32(ILandroid/icu/impl/UResource$Key;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/icu/impl/ICUResourceBundleReader;I)[C
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTableKeyOffsets(I)[C

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(I)I
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/icu/impl/ICUResourceBundleReader;I)[I
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTable32KeyOffsets(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->compareKeys32(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;C)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->compareKeys(Ljava/lang/CharSequence;C)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getArrayLength(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v0, Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/impl/ICUResourceBundleReader;->-assertionsDisabled:Z

    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    invoke-direct {v0, v2}, Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;-><init>(Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;)V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    const-string/jumbo v0, "\u0000"

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    invoke-direct {v0, v2}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;-><init>(Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;)V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

    new-array v0, v1, [B

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    new-array v0, v1, [C

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    new-array v0, v1, [I

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Array;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Array;

    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->PUBLIC_TYPES:[I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x2
        0x2
        0x0
        0x7
        0x8
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0xe
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->init(Ljava/nio/ByteBuffer;)V

    iget-boolean v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "pool"

    invoke-static {p2, v0, p4}, Landroid/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-boolean v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pool.res is not a pool bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pool.res has a different checksum than this bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/ICUResourceBundleReader;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static RES_GET_INT(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x4

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static RES_GET_OFFSET(I)I
    .locals 1

    const v0, 0xfffffff

    and-int/2addr v0, p0

    return v0
.end method

.method static RES_GET_TYPE(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1c

    return v0
.end method

.method static RES_GET_UINT(I)I
    .locals 1

    const v0, 0xfffffff

    and-int/2addr v0, p0

    return v0
.end method

.method static URES_IS_ARRAY(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static URES_IS_TABLE(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private compareKeys(Ljava/lang/CharSequence;C)I
    .locals 2

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {p1, v0, p2}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    sub-int v1, p2, v1

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result v0

    return v0
.end method

.method private compareKeys32(Ljava/lang/CharSequence;I)I
    .locals 2

    if-ltz p2, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {p1, v0, p2}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v1, 0x7fffffff

    and-int/2addr v1, p2

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result v0

    return v0
.end method

.method private getArrayLength(I)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v2

    return v2

    :cond_1
    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    return v2

    :cond_2
    return v3
.end method

.method private getChars(II)[C
    .locals 4

    new-array v0, p2, [C

    const/16 v3, 0x10

    if-gt p2, v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v3

    aput-char v3, v0, v1

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    div-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    :cond_1
    return-object v0
.end method

.method public static getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2f

    const/16 v2, 0x2e

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIndexesInt(I)I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    shl-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getInt(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getInts(II)[I
    .locals 4

    new-array v1, p2, [I

    const/16 v3, 0x10

    if-gt p2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    div-int/lit8 v3, p1, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    :cond_1
    return-object v1
.end method

.method private getKey16String(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {v0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKey32String(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {v0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;
    .locals 3

    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/icu/impl/ICUResourceBundleReader;->CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    invoke-virtual {v2, v0, p2}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader;

    sget-object v2, Landroid/icu/impl/ICUResourceBundleReader;->NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    return-object v1
.end method

.method private getResourceByteOffset(I)I
    .locals 1

    shl-int/lit8 v0, p1, 0x2

    return v0
.end method

.method private getTable16KeyOffsets(I)[C
    .locals 6

    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v5, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v1

    if-lez v1, :cond_1

    new-array v3, v1, [C

    const/16 v5, 0x10

    if-gt v1, v5, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 p1, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v5

    aput-char v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    move v2, p1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v3}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    move p1, v2

    :goto_1
    return-object v3

    :cond_1
    sget-object v5, Landroid/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    return-object v5

    :cond_2
    move p1, v2

    goto :goto_1
.end method

.method private getTable32KeyOffsets(I)[I
    .locals 2

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v1, p1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInts(II)[I

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    return-object v1
.end method

.method private getTableKeyOffsets(I)[C
    .locals 2

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getChars(II)[C

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    return-object v1
.end method

.method private getTableLength(I)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    return v2

    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    return v2

    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v2

    return v2

    :cond_3
    return v3
.end method

.method private init(Ljava/nio/ByteBuffer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v11, Landroid/icu/impl/ICUResourceBundleReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    const v12, 0x52657342

    invoke-static {p1, v12, v11}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    move-result v11

    iput v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->dataVersion:I

    const/16 v11, 0x10

    invoke-virtual {p1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    invoke-static {p1}, Landroid/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    iput v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->rootRes:I

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v5

    and-int/lit16 v4, v5, 0xff

    const/4 v11, 0x4

    if-gt v4, v11, :cond_0

    new-instance v11, Landroid/icu/util/ICUException;

    const-string/jumbo v12, "not enough indexes"

    invoke-direct {v11, v12}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_0
    add-int/lit8 v11, v4, 0x1

    shl-int/lit8 v11, v11, 0x2

    if-lt v3, v11, :cond_1

    const/4 v11, 0x3

    invoke-direct {p0, v11}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v2

    shl-int/lit8 v11, v2, 0x2

    if-ge v3, v11, :cond_2

    :cond_1
    new-instance v11, Landroid/icu/util/ICUException;

    const-string/jumbo v12, "not enough bytes"

    invoke-direct {v11, v12}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_2
    add-int/lit8 v9, v2, -0x1

    const/4 v11, 0x3

    if-lt v8, v11, :cond_3

    ushr-int/lit8 v11, v5, 0x8

    iput v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    :cond_3
    const/4 v11, 0x5

    if-le v4, v11, :cond_4

    const/4 v11, 0x5

    invoke-direct {p0, v11}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v1

    and-int/lit8 v11, v1, 0x1

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->noFallback:Z

    and-int/lit8 v11, v1, 0x2

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    and-int/lit8 v11, v1, 0x4

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    iget v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    const v12, 0xf000

    and-int/2addr v12, v1

    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v11, v12

    iput v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    ushr-int/lit8 v11, v1, 0x10

    iput v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndex16Limit:I

    :cond_4
    add-int/lit8 v6, v4, 0x1

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v7

    if-le v7, v6, :cond_5

    iget-boolean v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-eqz v11, :cond_c

    sub-int v11, v7, v6

    shl-int/lit8 v11, v11, 0x2

    new-array v11, v11, [B

    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    shl-int/lit8 v12, v6, 0x2

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_3
    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v12, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_5
    const/4 v11, 0x6

    if-le v4, v11, :cond_e

    const/4 v11, 0x6

    invoke-direct {p0, v11}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v0

    if-le v0, v7, :cond_d

    sub-int v11, v0, v7

    mul-int/lit8 v10, v11, 0x2

    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    shl-int/lit8 v12, v7, 0x2

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v11

    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v11, v10}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    add-int/lit8 v11, v10, -0x1

    or-int/2addr v9, v11

    :goto_4
    const/4 v11, 0x7

    if-le v4, v11, :cond_6

    const/4 v11, 0x7

    invoke-direct {p0, v11}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v11

    iput v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    :cond_6
    iget-boolean v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-eqz v11, :cond_7

    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v11}, Ljava/nio/CharBuffer;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_8

    :cond_7
    new-instance v11, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-direct {v11, v9}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;-><init>(I)V

    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    :cond_8
    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_c
    shl-int/lit8 v11, v7, 0x2

    iput v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    iget v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    new-array v11, v11, [B

    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    goto :goto_3

    :cond_d
    sget-object v11, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    goto :goto_4

    :cond_e
    sget-object v11, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    goto :goto_4
.end method

.method private isNoInheritanceMarker(I)Z
    .locals 5

    const/16 v4, 0x2205

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    if-ne p1, v0, :cond_3

    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-direct {v1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->isStringV2NoInheritanceMarker(I)Z

    move-result v1

    return v1

    :cond_4
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->isStringV2NoInheritanceMarker(I)Z

    move-result v1

    return v1
.end method

.method private isStringV2NoInheritanceMarker(I)Z
    .locals 6

    const/4 v1, 0x1

    const/16 v5, 0x2205

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const v3, 0xdc03

    if-ne v0, v3, :cond_5

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    :goto_1
    return v1

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    return v2
.end method

.method private static makeKeyStringFromBytes([BI)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    aget-byte v0, p0, p1

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private makeStringFromBytes(II)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x10

    if-gt p2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    div-int/lit8 p1, p1, 0x2

    add-int v3, p1, p2

    invoke-interface {v0, p1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private setKeyFromKey16(ILandroid/icu/impl/UResource$Key;)V
    .locals 2

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {p2, v0, p1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    sub-int v1, p1, v1

    invoke-virtual {p2, v0, v1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)V

    goto :goto_0
.end method

.method private setKeyFromKey32(ILandroid/icu/impl/UResource$Key;)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {p2, v0, p1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)V

    goto :goto_0
.end method


# virtual methods
.method getAlias(I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    if-nez v1, :cond_0

    const-string/jumbo v4, ""

    return-object v4

    :cond_0
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v4, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Ljava/lang/String;

    return-object v3

    :cond_1
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    add-int/lit8 v4, v1, 0x4

    invoke-direct {p0, v4, v0}, Landroid/icu/impl/ICUResourceBundleReader;->makeStringFromBytes(II)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    mul-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, p1, v2, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4

    :cond_2
    return-object v6
.end method

.method getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v6

    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    if-nez v1, :cond_1

    sget-object v4, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Array;

    return-object v4

    :cond_1
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v4, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Landroid/icu/impl/ICUResourceBundleReader$Array;

    return-object v3

    :cond_2
    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Array32;

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Array32;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    :goto_0
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v4, p1, v0, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundleReader$Array;

    return-object v4

    :cond_3
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Array16;

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Array16;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    goto :goto_0
.end method

.method getBinary(I)Ljava/nio/ByteBuffer;
    .locals 5

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    if-nez v1, :cond_0

    sget-object v3, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v3, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x4

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    add-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    :cond_2
    return-object v2

    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method getBinary(I[B)[B
    .locals 8

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v2

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    if-nez v2, :cond_0

    sget-object v5, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    return-object v5

    :cond_0
    invoke-direct {p0, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v1

    if-nez v1, :cond_1

    sget-object v5, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    return-object v5

    :cond_1
    if-eqz p2, :cond_2

    array-length v5, p2

    if-eq v5, v1, :cond_3

    :cond_2
    new-array p2, v1, [B

    :cond_3
    add-int/lit8 v2, v2, 0x4

    const/16 v5, 0x10

    if-gt v1, v5, :cond_4

    const/4 v0, 0x0

    move v3, v2

    :goto_0
    if-ge v0, v1, :cond_6

    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    aput-byte v5, p2, v0

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_0

    :cond_4
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_1
    return-object p2

    :cond_5
    return-object v7

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method getIntVector(I)[I
    .locals 4

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_0

    sget-object v2, Landroid/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    return-object v2

    :cond_0
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    add-int/lit8 v2, v1, 0x4

    invoke-direct {p0, v2, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInts(II)[I

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method getNoFallback()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->noFallback:Z

    return v0
.end method

.method getRootResource()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->rootRes:I

    return v0
.end method

.method getString(I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    return-object v6

    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v4, ""

    return-object v4

    :cond_1
    if-eq p1, v1, :cond_3

    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v4, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getStringV2(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    sub-int v4, p1, v4

    invoke-virtual {p0, v4}, Landroid/icu/impl/ICUResourceBundleReader;->getStringV2(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v4, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Ljava/lang/String;

    return-object v3

    :cond_4
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    add-int/lit8 v4, v1, 0x4

    invoke-direct {p0, v4, v0}, Landroid/icu/impl/ICUResourceBundleReader;->makeStringFromBytes(II)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, p1, v2, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4
.end method

.method getStringV2(I)Ljava/lang/String;
    .locals 12

    const v11, 0xdfef

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-boolean v9, Landroid/icu/impl/ICUResourceBundleReader;->-assertionsDisabled:Z

    if-nez v9, :cond_1

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_0

    move v9, v7

    :goto_0
    if-nez v9, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_0
    move v9, v8

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v3

    sget-boolean v9, Landroid/icu/impl/ICUResourceBundleReader;->-assertionsDisabled:Z

    if-nez v9, :cond_3

    if-eqz v3, :cond_2

    :goto_1
    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_2
    move v7, v8

    goto :goto_1

    :cond_3
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v7, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    check-cast v6, Ljava/lang/String;

    return-object v6

    :cond_4
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v1

    and-int/lit16 v7, v1, -0x400

    const v8, 0xdc00

    if-eq v7, v8, :cond_7

    if-nez v1, :cond_5

    const-string/jumbo v7, ""

    return-object v7

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v7, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, p1, v4, v8}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    return-object v7

    :cond_7
    if-ge v1, v11, :cond_8

    and-int/lit16 v2, v1, 0x3ff

    add-int/lit8 v3, v3, 0x1

    :goto_4
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int v8, v3, v2

    invoke-interface {v7, v3, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_8
    const v7, 0xdfff

    if-ge v1, v7, :cond_9

    sub-int v7, v1, v11

    shl-int/lit8 v7, v7, 0x10

    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v8

    or-int v2, v7, v8

    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_9
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v9, v3, 0x2

    invoke-virtual {v8, v9}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v8

    or-int v2, v7, v8

    add-int/lit8 v3, v3, 0x3

    goto :goto_4
.end method

.method getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v5

    if-nez v5, :cond_0

    return-object v6

    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v5, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

    return-object v5

    :cond_1
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v5, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    check-cast v4, Landroid/icu/impl/ICUResourceBundleReader$Table;

    return-object v4

    :cond_2
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    new-instance v2, Landroid/icu/impl/ICUResourceBundleReader$Table1632;

    invoke-direct {v2, p0, v0}, Landroid/icu/impl/ICUResourceBundleReader$Table1632;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v5

    mul-int/lit8 v1, v5, 0x2

    :goto_0
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v5, p1, v2, v1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/ICUResourceBundleReader$Table;

    return-object v5

    :cond_3
    const/4 v5, 0x5

    if-ne v3, v5, :cond_4

    new-instance v2, Landroid/icu/impl/ICUResourceBundleReader$Table16;

    invoke-direct {v2, p0, v0}, Landroid/icu/impl/ICUResourceBundleReader$Table16;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v5

    mul-int/lit8 v1, v5, 0x2

    goto :goto_0

    :cond_4
    new-instance v2, Landroid/icu/impl/ICUResourceBundleReader$Table32;

    invoke-direct {v2, p0, v0}, Landroid/icu/impl/ICUResourceBundleReader$Table32;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v5

    mul-int/lit8 v1, v5, 0x4

    goto :goto_0
.end method

.method getUsesPoolBundle()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    return v0
.end method

.method getVersion()Landroid/icu/util/VersionInfo;
    .locals 1

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->dataVersion:I

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getVersionInfoFromCompactInt(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method
