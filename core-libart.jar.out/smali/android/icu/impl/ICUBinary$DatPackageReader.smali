.class final Landroid/icu/impl/ICUBinary$DatPackageReader;
.super Ljava/lang/Object;
.source "ICUBinary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatPackageReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DATA_FORMAT:I = 0x436d6e44

.field private static final IS_ACCEPTABLE:Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/icu/impl/ICUBinary$DatPackageReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/ICUBinary$DatPackageReader;->-assertionsDisabled:Z

    new-instance v0, Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;-><init>(Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;)V

    sput-object v0, Landroid/icu/impl/ICUBinary$DatPackageReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addBaseName(Ljava/nio/ByteBuffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Set;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    move-result v4

    const-string/jumbo v6, "icudt56b"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_0

    const/4 v6, 0x0

    return v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_2

    const/4 v6, 0x0

    return v6

    :cond_2
    move v4, v5

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_1
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_5

    int-to-char v1, v0

    const/16 v6, 0x2f

    if-ne v1, v6, :cond_4

    const/4 v6, 0x1

    return v6

    :cond_4
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v5

    goto :goto_1

    :cond_5
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v3, v6, v7

    invoke-virtual {p4, p3, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_6

    const/4 v6, 0x0

    invoke-virtual {p4, v6, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v6, 0x1

    return v6
.end method

.method static addBaseNamesInFolder(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/icu/impl/ICUBinary$DatPackageReader;->binarySearch(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)I

    move-result v1

    if-gez v1, :cond_0

    not-int v1, v1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge v1, v7, :cond_1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/ICUBinary$DatPackageReader;->addBaseName(Ljava/nio/ByteBuffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static binarySearch(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)I
    .locals 8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const/4 v6, 0x0

    move v2, v1

    :goto_0
    if-ge v6, v2, :cond_2

    add-int v7, v6, v2

    ushr-int/lit8 v3, v7, 0x1

    invoke-static {p0, v3}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    move-result v4

    const-string/jumbo v7, "icudt56b"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v7

    invoke-static {p1, p0, v4}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;I)I

    move-result v5

    if-gez v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    if-lez v5, :cond_1

    add-int/lit8 v6, v3, 0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    not-int v7, v6

    return v7
.end method

.method static getData(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;
    .locals 3

    invoke-static {p0, p1}, Landroid/icu/impl/ICUBinary$DatPackageReader;->binarySearch(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0, v1}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getDataOffset(Ljava/nio/ByteBuffer;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getDataOffset(Ljava/nio/ByteBuffer;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getDataOffset(Ljava/nio/ByteBuffer;I)I
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    return v2

    :cond_0
    sget-boolean v3, Landroid/icu/impl/ICUBinary$DatPackageReader;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_2
    add-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    return v2
.end method

.method private static getNameOffset(Ljava/nio/ByteBuffer;I)I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sget-boolean v2, Landroid/icu/impl/ICUBinary$DatPackageReader;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ltz p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    if-ge p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    add-int/lit8 v1, v0, 0x4

    mul-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private static startsWithPackageName(Ljava/nio/ByteBuffer;I)Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "icudt56b"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const-string/jumbo v5, "icudt56b"

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_0

    return v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    add-int v4, p1, v2

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/16 v4, 0x62

    if-eq v0, v4, :cond_3

    const/16 v4, 0x6c

    if-eq v0, v4, :cond_3

    :cond_2
    return v6

    :cond_3
    add-int v4, p1, v3

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    return v4
.end method

.method static validate(Ljava/nio/ByteBuffer;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/icu/impl/ICUBinary$DatPackageReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;

    const v3, 0x436d6e44

    invoke-static {p0, v3, v2}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    if-gtz v0, :cond_0

    return v4

    :catch_0
    move-exception v1

    return v4

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x18

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_1

    return v4

    :cond_1
    invoke-static {p0, v4}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    move-result v2

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary$DatPackageReader;->startsWithPackageName(Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    move-result v2

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary$DatPackageReader;->startsWithPackageName(Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    return v4
.end method
