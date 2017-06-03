.class public final Landroid/icu/impl/ICUBinary;
.super Ljava/lang/Object;
.source "ICUBinary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUBinary$Authenticate;,
        Landroid/icu/impl/ICUBinary$DatPackageReader;,
        Landroid/icu/impl/ICUBinary$DataFile;,
        Landroid/icu/impl/ICUBinary$PackageDataFile;,
        Landroid/icu/impl/ICUBinary$SingleDataFile;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final CHAR_SET_:B = 0x0t

.field private static final CHAR_SIZE_:B = 0x2t

.field private static final HEADER_AUTHENTICATION_FAILED_:Ljava/lang/String; = "ICU data file error: Header authentication failed, please check if you have a valid ICU data file"

.field private static final MAGIC1:B = -0x26t

.field private static final MAGIC2:B = 0x27t

.field private static final MAGIC_NUMBER_AUTHENTICATION_FAILED_:Ljava/lang/String; = "ICU data file error: Not an ICU data file"

.field private static final icuDataFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/ICUBinary$DataFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v1, Landroid/icu/impl/ICUBinary;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroid/icu/impl/ICUBinary;->-assertionsDisabled:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/icu/impl/ICUBinary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".dataPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->addDataFilesFromPath(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBaseNamesInFileFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v2, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUBinary$DataFile;

    invoke-virtual {v0, p0, p1, p2}, Landroid/icu/impl/ICUBinary$DataFile;->addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/ICUBinary$DataFile;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/16 v6, 0x2f

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :cond_2
    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_7

    aget-object v0, v2, v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, ".txt"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v0, p1, p2}, Landroid/icu/impl/ICUBinary;->addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_4
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_5
    const-string/jumbo v7, ".dat"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4}, Landroid/icu/impl/ICUBinary$DatPackageReader;->validate(Ljava/nio/ByteBuffer;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Landroid/icu/impl/ICUBinary$PackageDataFile;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Landroid/icu/impl/ICUBinary$PackageDataFile;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v7, Landroid/icu/impl/ICUBinary$SingleDataFile;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Landroid/icu/impl/ICUBinary$SingleDataFile;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static addDataFilesFromPath(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/ICUBinary$DataFile;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    sget-char v4, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_3

    move v1, v3

    :goto_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-static {v4, v5, v6}, Landroid/icu/impl/ICUBinary;->addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_1
    if-gez v3, :cond_4

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v3, 0x1

    goto :goto_0
.end method

.method static compareKeys(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;I)I
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x1

    return v3

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v3, -0x1

    return v3

    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sub-int v1, v3, v0

    if-eqz v1, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method static compareKeys(Ljava/lang/CharSequence;[BI)I
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    aget-byte v0, p1, p2

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x1

    return v3

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v3, -0x1

    return v3

    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sub-int v1, v3, v0

    if-eqz v1, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x80

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v8, 0x20

    if-le v0, v8, :cond_1

    new-array v1, v0, [B

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    array-length v8, v1

    if-ge v4, v8, :cond_3

    array-length v8, v1

    sub-int/2addr v8, v4

    invoke-virtual {p0, v1, v4, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-gez v7, :cond_2

    :cond_0
    const/4 v8, 0x0

    invoke-static {v1, v8, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v8

    :cond_1
    const/16 v8, 0x80

    :try_start_1
    new-array v1, v8, [B

    goto :goto_0

    :cond_2
    add-int v3, v4, v7

    :goto_2
    move v4, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_0

    array-length v8, v1

    mul-int/lit8 v2, v8, 0x2

    if-ge v2, v10, :cond_5

    const/16 v2, 0x80

    :cond_4
    :goto_3
    new-array v5, v2, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v8, v5, v9, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v1, v5

    add-int/lit8 v3, v4, 0x1

    int-to-byte v8, v6

    aput-byte v8, v5, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v8

    :cond_5
    const/16 v8, 0x4000

    if-ge v2, v8, :cond_4

    mul-int/lit8 v2, v2, 0x2

    goto :goto_3
.end method

.method public static getChars(Ljava/nio/ByteBuffer;II)[C
    .locals 2

    new-array v0, p1, [C

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    invoke-static {p0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method public static getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p2}, Landroid/icu/impl/ICUBinary;->getDataFromFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    const-class v4, Landroid/icu/impl/ICUData;

    invoke-static {v4}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    :cond_1
    if-nez p1, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "android/icu/impl/data/icudt56b/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v6

    :cond_3
    invoke-static {v3}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    new-instance v4, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v4, v2}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v1, v1, p0, v0}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static getDataFromFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 5

    const/4 v4, 0x0

    sget-object v3, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUBinary$DataFile;

    invoke-virtual {v1, p0}, Landroid/icu/impl/ICUBinary$DataFile;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    return-object v4
.end method

.method public static getInts(Ljava/nio/ByteBuffer;II)[I
    .locals 2

    new-array v0, p1, [I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    invoke-static {p0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method public static getLongs(Ljava/nio/ByteBuffer;II)[J
    .locals 2

    new-array v0, p1, [J

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    mul-int/lit8 v1, p1, 0x8

    add-int/2addr v1, p2

    invoke-static {p0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method public static getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v1, v1, p0, v0}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getShorts(Ljava/nio/ByteBuffer;II)[S
    .locals 2

    new-array v0, p1, [S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    invoke-static {p0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method public static getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v2, p2

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    return-object v1
.end method

.method public static getVersionByteArrayFromCompactInt(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static getVersionInfoFromCompactInt(I)Landroid/icu/util/VersionInfo;
    .locals 4

    ushr-int/lit8 v0, p0, 0x18

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, p0, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method private static mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 10

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const/4 v6, 0x0

    :try_start_1
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    return-object v6

    :catchall_0
    move-exception v1

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v8

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_0
    const/4 v1, 0x0

    return-object v1

    :catch_1
    move-exception v9

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v9, Landroid/icu/impl/ICUBinary;->-assertionsDisabled:Z

    if-nez v9, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    const/16 v9, -0x26

    if-ne v5, v9, :cond_2

    const/16 v9, 0x27

    if-eq v6, v9, :cond_3

    :cond_2
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "ICU data file error: Not an ICU data file"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v9, 0x9

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/16 v9, 0xa

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-ltz v4, :cond_4

    const/4 v9, 0x1

    if-ge v9, v4, :cond_5

    :cond_4
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "ICU data file error: Header authentication failed, please check if you have a valid ICU data file"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_5
    if-nez v1, :cond_4

    const/4 v9, 0x2

    if-ne v7, v9, :cond_4

    if-eqz v4, :cond_7

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_1
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v3

    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v8

    const/16 v9, 0x14

    if-lt v8, v9, :cond_6

    add-int/lit8 v9, v8, 0x4

    if-ge v3, v9, :cond_8

    :cond_6
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "Internal Error: Header size error"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_7
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    :cond_8
    const/4 v9, 0x4

    new-array v2, v9, [B

    const/16 v9, 0x10

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/4 v10, 0x0

    aput-byte v9, v2, v10

    const/16 v9, 0x11

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/4 v10, 0x1

    aput-byte v9, v2, v10

    const/16 v9, 0x12

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/4 v10, 0x2

    aput-byte v9, v2, v10

    const/16 v9, 0x13

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/4 v10, 0x3

    aput-byte v9, v2, v10

    const/16 v9, 0xc

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    shr-int/lit8 v10, p1, 0x18

    int-to-byte v10, v10

    if-ne v9, v10, :cond_9

    const/16 v9, 0xd

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    shr-int/lit8 v10, p1, 0x10

    int-to-byte v10, v10

    if-eq v9, v10, :cond_a

    :cond_9
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ICU data file error: Header authentication failed, please check if you have a valid ICU data file"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; data format %02x%02x%02x%02x, format version %d.%d.%d.%d"

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v13, 0xc

    invoke-virtual {p0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/16 v13, 0xd

    invoke-virtual {p0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const/16 v13, 0xe

    invoke-virtual {p0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/16 v13, 0xf

    invoke-virtual {p0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    const/4 v13, 0x0

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x4

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x5

    aput-object v13, v12, v14

    const/4 v13, 0x2

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x6

    aput-object v13, v12, v14

    const/4 v13, 0x3

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_a
    const/16 v9, 0xe

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    shr-int/lit8 v10, p1, 0x8

    int-to-byte v10, v10

    if-ne v9, v10, :cond_9

    const/16 v9, 0xf

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    move/from16 v0, p1

    int-to-byte v10, v0

    if-ne v9, v10, :cond_9

    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/icu/impl/ICUBinary$Authenticate;->isDataVersionAcceptable([B)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_b
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v9, 0x14

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    shl-int/lit8 v9, v9, 0x18

    const/16 v10, 0x15

    invoke-virtual {p0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/16 v10, 0x16

    invoke-virtual {p0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/16 v10, 0x17

    invoke-virtual {p0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    return v9
.end method

.method public static readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getVersionInfoFromCompactInt(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static skipBytes(Ljava/nio/ByteBuffer;I)V
    .locals 1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public static sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static writeHeader(IIILjava/io/DataOutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v4, 0x20

    const/4 v1, 0x0

    invoke-virtual {p3, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    const/16 v2, -0x26

    invoke-virtual {p3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x27

    invoke-virtual {p3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x14

    invoke-virtual {p3, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeChar(I)V

    invoke-virtual {p3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x2

    invoke-virtual {p3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p3, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p3, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    sget-boolean v2, Landroid/icu/impl/ICUBinary;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p3}, Ljava/io/DataOutputStream;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return v4
.end method
