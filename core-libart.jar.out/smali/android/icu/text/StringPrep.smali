.class public final Landroid/icu/text/StringPrep;
.super Ljava/lang/Object;
.source "StringPrep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/StringPrep$Values;
    }
.end annotation


# static fields
.field public static final ALLOW_UNASSIGNED:I = 0x1

.field private static final CACHE:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/icu/text/StringPrep;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHECK_BIDI_ON:I = 0x2

.field public static final DEFAULT:I = 0x0

.field private static final DELETE:I = 0x3

.field private static final FOUR_UCHARS_MAPPING_INDEX_START:I = 0x6

.field private static final INDEX_MAPPING_DATA_SIZE:I = 0x1

.field private static final INDEX_TOP:I = 0x10

.field private static final MAP:I = 0x1

.field private static final MAX_INDEX_VALUE:I = 0x3fbf

.field private static final MAX_PROFILE:I = 0xd

.field private static final NORMALIZATION_ON:I = 0x1

.field private static final NORM_CORRECTNS_LAST_UNI_VERSION:I = 0x2

.field private static final ONE_UCHAR_MAPPING_INDEX_START:I = 0x3

.field private static final OPTIONS:I = 0x7

.field private static final PROFILE_NAMES:[Ljava/lang/String;

.field private static final PROHIBITED:I = 0x2

.field public static final RFC3491_NAMEPREP:I = 0x0

.field public static final RFC3530_NFS4_CIS_PREP:I = 0x3

.field public static final RFC3530_NFS4_CS_PREP:I = 0x1

.field public static final RFC3530_NFS4_CS_PREP_CI:I = 0x2

.field public static final RFC3530_NFS4_MIXED_PREP_PREFIX:I = 0x4

.field public static final RFC3530_NFS4_MIXED_PREP_SUFFIX:I = 0x5

.field public static final RFC3722_ISCSI:I = 0x6

.field public static final RFC3920_NODEPREP:I = 0x7

.field public static final RFC3920_RESOURCEPREP:I = 0x8

.field public static final RFC4011_MIB:I = 0x9

.field public static final RFC4013_SASLPREP:I = 0xa

.field public static final RFC4505_TRACE:I = 0xb

.field public static final RFC4518_LDAP:I = 0xc

.field public static final RFC4518_LDAP_CI:I = 0xd

.field private static final THREE_UCHARS_MAPPING_INDEX_START:I = 0x5

.field private static final TWO_UCHARS_MAPPING_INDEX_START:I = 0x4

.field private static final TYPE_LIMIT:I = 0x4

.field private static final TYPE_THRESHOLD:I = 0xfff0

.field private static final UNASSIGNED:I


# instance fields
.field private bdp:Landroid/icu/impl/UBiDiProps;

.field private checkBiDi:Z

.field private doNFKC:Z

.field private indexes:[I

.field private mappingData:[C

.field private normCorrVer:Landroid/icu/util/VersionInfo;

.field private sprepTrie:Landroid/icu/impl/CharTrie;

.field private sprepUniVer:Landroid/icu/util/VersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xe

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "rfc3491"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "rfc3530cs"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "rfc3530csci"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "rfc3491"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "rfc3530mixp"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "rfc3491"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "rfc3722"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "rfc3920node"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "rfc3920res"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "rfc4011"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "rfc4013"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "rfc4505"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "rfc4518"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "rfc4518ci"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/StringPrep;->PROFILE_NAMES:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/ref/WeakReference;

    sput-object v0, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/StringPrep;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/icu/impl/StringPrepDataReader;

    invoke-direct {v1, p1}, Landroid/icu/impl/StringPrepDataReader;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/icu/impl/StringPrepDataReader;->readIndexes(I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    new-instance v2, Landroid/icu/impl/CharTrie;

    const/4 v5, 0x0

    invoke-direct {v2, p1, v5}, Landroid/icu/impl/CharTrie;-><init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V

    iput-object v2, p0, Landroid/icu/text/StringPrep;->sprepTrie:Landroid/icu/impl/CharTrie;

    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v2, v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/icu/impl/StringPrepDataReader;->read(I)[C

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/StringPrep;->mappingData:[C

    invoke-virtual {v1}, Landroid/icu/impl/StringPrepDataReader;->getDataFormatVersion()[B

    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v2, v2, v6

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/icu/text/StringPrep;->doNFKC:Z

    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v2, v2, v6

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_1

    :goto_1
    iput-boolean v3, p0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    invoke-virtual {v1}, Landroid/icu/impl/StringPrepDataReader;->getUnicodeVersion()[B

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/StringPrep;->getVersionInfo([B)Landroid/icu/util/VersionInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/StringPrep;->sprepUniVer:Landroid/icu/util/VersionInfo;

    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v2}, Landroid/icu/text/StringPrep;->getVersionInfo(I)Landroid/icu/util/VersionInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/StringPrep;->normCorrVer:Landroid/icu/util/VersionInfo;

    invoke-static {}, Landroid/icu/lang/UCharacter;->getUnicodeVersion()Landroid/icu/util/VersionInfo;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/StringPrep;->sprepUniVer:Landroid/icu/util/VersionInfo;

    invoke-virtual {v0, v2}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    move-result v2

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/StringPrep;->normCorrVer:Landroid/icu/util/VersionInfo;

    invoke-virtual {v0, v2}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    move-result v2

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v2, v2, v6

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Normalization Correction version not supported"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    iput-object v2, p0, Landroid/icu/text/StringPrep;->bdp:Landroid/icu/impl/UBiDiProps;

    :cond_3
    return-void
.end method

.method private getCodePointValue(I)C
    .locals 1

    iget-object v0, p0, Landroid/icu/text/StringPrep;->sprepTrie:Landroid/icu/impl/CharTrie;

    invoke-virtual {v0, p1}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v0

    return v0
.end method

.method public static getInstance(I)Landroid/icu/text/StringPrep;
    .locals 9

    if-ltz p0, :cond_0

    const/16 v6, 0xd

    if-le p0, v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Bad profile type"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    const/4 v3, 0x0

    sget-object v7, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    monitor-enter v7

    :try_start_0
    sget-object v6, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    aget-object v5, v6, p0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/icu/text/StringPrep;

    move-object v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v3

    :goto_0
    if-nez v4, :cond_4

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/icu/text/StringPrep;->PROFILE_NAMES:[Ljava/lang/String;

    aget-object v8, v8, p0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ".spp"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_2
    new-instance v3, Landroid/icu/text/StringPrep;

    invoke-direct {v3, v1}, Landroid/icu/text/StringPrep;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v3, :cond_2

    :try_start_3
    sget-object v6, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_2
    monitor-exit v7

    return-object v3

    :catch_0
    move-exception v2

    :try_start_4
    new-instance v6, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v6, v2}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v6

    move-object v3, v4

    :goto_3
    monitor-exit v7

    throw v6

    :catchall_1
    move-exception v6

    goto :goto_3

    :cond_3
    move-object v3, v4

    goto :goto_1

    :cond_4
    move-object v3, v4

    goto :goto_2

    :cond_5
    move-object v4, v3

    goto :goto_0
.end method

.method private static final getValues(CLandroid/icu/text/StringPrep$Values;)V
    .locals 3

    const v0, 0xfff0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/icu/text/StringPrep$Values;->reset()V

    if-nez p0, :cond_1

    const/4 v0, 0x4

    iput v0, p1, Landroid/icu/text/StringPrep$Values;->type:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lt p0, v0, :cond_2

    sub-int v0, p0, v0

    iput v0, p1, Landroid/icu/text/StringPrep$Values;->type:I

    goto :goto_0

    :cond_2
    iput v1, p1, Landroid/icu/text/StringPrep$Values;->type:I

    and-int/lit8 v0, p0, 0x2

    if-lez v0, :cond_3

    iput-boolean v1, p1, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    shr-int/lit8 v0, p0, 0x2

    iput v0, p1, Landroid/icu/text/StringPrep$Values;->value:I

    :goto_1
    shr-int/lit8 v0, p0, 0x2

    const/16 v1, 0x3fbf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p1, Landroid/icu/text/StringPrep$Values;->type:I

    iput-boolean v2, p1, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    iput v2, p1, Landroid/icu/text/StringPrep$Values;->value:I

    goto :goto_0

    :cond_3
    iput-boolean v2, p1, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    shl-int/lit8 v0, p0, 0x10

    shr-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/icu/text/StringPrep$Values;->value:I

    iget v0, p1, Landroid/icu/text/StringPrep$Values;->value:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/icu/text/StringPrep$Values;->value:I

    goto :goto_1
.end method

.method private static getVersionInfo(I)Landroid/icu/util/VersionInfo;
    .locals 5

    and-int/lit16 v1, p0, 0xff

    shr-int/lit8 v4, p0, 0x8

    and-int/lit16 v2, v4, 0xff

    shr-int/lit8 v4, p0, 0x10

    and-int/lit16 v3, v4, 0xff

    shr-int/lit8 v4, p0, 0x18

    and-int/lit16 v0, v4, 0xff

    invoke-static {v0, v3, v2, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v4

    return-object v4
.end method

.method private static getVersionInfo([B)Landroid/icu/util/VersionInfo;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method private map(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v12, 0x3

    new-instance v7, Landroid/icu/text/StringPrep$Values;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/icu/text/StringPrep$Values;-><init>(Landroid/icu/text/StringPrep$Values;)V

    const/4 v6, 0x0

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v8, p2, 0x1

    if-lez v8, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_8

    invoke-direct {p0, v1}, Landroid/icu/text/StringPrep;->getCodePointValue(I)C

    move-result v6

    invoke-static {v6, v7}, Landroid/icu/text/StringPrep;->getValues(CLandroid/icu/text/StringPrep$Values;)V

    iget v8, v7, Landroid/icu/text/StringPrep$Values;->type:I

    if-nez v8, :cond_1

    if-nez v0, :cond_1

    new-instance v8, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v9, "An unassigned code point was found in the input"

    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v11

    invoke-direct {v8, v9, v12, v10, v11}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v8

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v8, v7, Landroid/icu/text/StringPrep$Values;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    iget-boolean v8, v7, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    if-eqz v8, :cond_5

    iget v3, v7, Landroid/icu/text/StringPrep$Values;->value:I

    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v8, v8, v12

    if-lt v3, v8, :cond_2

    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v8, v8, v10

    if-ge v3, v8, :cond_2

    const/4 v5, 0x1

    :goto_1
    iget-object v8, p0, Landroid/icu/text/StringPrep;->mappingData:[C

    invoke-virtual {v2, v8, v3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v8, v8, v10

    if-lt v3, v8, :cond_3

    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v8, v8, v11

    if-ge v3, v8, :cond_3

    const/4 v5, 0x2

    goto :goto_1

    :cond_3
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v8, v8, v11

    if-lt v3, v8, :cond_4

    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    const/4 v9, 0x6

    aget v8, v8, v9

    if-ge v3, v8, :cond_4

    const/4 v5, 0x3

    goto :goto_1

    :cond_4
    iget-object v8, p0, Landroid/icu/text/StringPrep;->mappingData:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v5, v8, v3

    move v3, v4

    goto :goto_1

    :cond_5
    iget v8, v7, Landroid/icu/text/StringPrep$Values;->value:I

    sub-int/2addr v1, v8

    :cond_6
    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_7
    iget v8, v7, Landroid/icu/text/StringPrep$Values;->type:I

    if-ne v8, v12, :cond_6

    goto :goto_0

    :cond_8
    return-object v2
.end method

.method private normalize(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    const/16 v3, 0x20

    invoke-static {v1, v2, v3}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public prepare(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/icu/text/StringPrep;->prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    invoke-direct/range {p0 .. p2}, Landroid/icu/text/StringPrep;->map(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/StringPrep;->doNFKC:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/icu/text/StringPrep;->normalize(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v12

    :cond_0
    invoke-static {v12}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    move-result-object v8

    new-instance v16, Landroid/icu/text/StringPrep$Values;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Landroid/icu/text/StringPrep$Values;-><init>(Landroid/icu/text/StringPrep$Values;)V

    const/16 v6, 0x17

    const/16 v7, 0x17

    const/4 v15, -0x1

    const/4 v10, -0x1

    const/4 v14, 0x0

    const/4 v9, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v5

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/icu/text/StringPrep;->getCodePointValue(I)C

    move-result v13

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/icu/text/StringPrep;->getValues(CLandroid/icu/text/StringPrep$Values;)V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/icu/text/StringPrep$Values;->type:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    new-instance v17, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v18, "A prohibited code point was found in the input"

    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/icu/text/StringPrep$Values;->value:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v21

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v17

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringPrep;->bdp:Landroid/icu/impl/UBiDiProps;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v6

    const/16 v17, 0x17

    move/from16 v0, v17

    if-ne v7, v0, :cond_3

    move v7, v6

    :cond_3
    if-nez v6, :cond_4

    const/4 v9, 0x1

    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v17

    add-int/lit8 v10, v17, -0x1

    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_5

    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v6, v0, :cond_1

    :cond_5
    const/4 v14, 0x1

    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v17

    add-int/lit8 v15, v17, -0x1

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    if-eqz v9, :cond_8

    if-eqz v14, :cond_8

    new-instance v17, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v18, "The input does not conform to the rules for BiDi code points."

    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v19

    if-le v15, v10, :cond_7

    :goto_1
    const/16 v20, 0x4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v15}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v17

    :cond_7
    move v15, v10

    goto :goto_1

    :cond_8
    if-eqz v14, :cond_b

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_a

    const/16 v17, 0xd

    move/from16 v0, v17

    if-eq v7, v0, :cond_a

    :cond_9
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v18, "The input does not conform to the rules for BiDi code points."

    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v19

    if-le v15, v10, :cond_c

    :goto_2
    const/16 v20, 0x4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v15}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v17

    :cond_a
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_b

    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v6, v0, :cond_9

    :cond_b
    return-object v12

    :cond_c
    move v15, v10

    goto :goto_2
.end method
