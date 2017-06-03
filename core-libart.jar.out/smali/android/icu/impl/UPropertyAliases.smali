.class public final Landroid/icu/impl/UPropertyAliases;
.super Ljava/lang/Object;
.source "UPropertyAliases.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UPropertyAliases$IsAcceptable;
    }
.end annotation


# static fields
.field private static final DATA_FORMAT:I = 0x706e616d

.field public static final INSTANCE:Landroid/icu/impl/UPropertyAliases;

.field private static final IS_ACCEPTABLE:Landroid/icu/impl/UPropertyAliases$IsAcceptable;

.field private static final IX_BYTE_TRIES_OFFSET:I = 0x1

.field private static final IX_NAME_GROUPS_OFFSET:I = 0x2

.field private static final IX_RESERVED3_OFFSET:I = 0x3

.field private static final IX_VALUE_MAPS_OFFSET:I


# instance fields
.field private bytesTries:[B

.field private nameGroups:Ljava/lang/String;

.field private valueMaps:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v2, Landroid/icu/impl/UPropertyAliases$IsAcceptable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/impl/UPropertyAliases$IsAcceptable;-><init>(Landroid/icu/impl/UPropertyAliases$IsAcceptable;)V

    sput-object v2, Landroid/icu/impl/UPropertyAliases;->IS_ACCEPTABLE:Landroid/icu/impl/UPropertyAliases$IsAcceptable;

    :try_start_0
    new-instance v2, Landroid/icu/impl/UPropertyAliases;

    invoke-direct {v2}, Landroid/icu/impl/UPropertyAliases;-><init>()V

    sput-object v2, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/MissingResourceException;

    const-string/jumbo v2, "Could not construct UPropertyAliases. Missing pnames.icu"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "pnames.icu"

    invoke-static {v1}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/UPropertyAliases;->load(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static asciiToLowercase(I)I
    .locals 1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    :cond_0
    return p0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v5, v7, :cond_3

    const/4 v3, 0x1

    :goto_3
    if-eqz v2, :cond_6

    if-eqz v3, :cond_4

    return v9

    :sswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :sswitch_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_4
    invoke-static {v0}, Landroid/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    move-result v7

    invoke-static {v1}, Landroid/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    move-result v8

    sub-int v6, v7, v8

    if-eqz v6, :cond_7

    return v6

    :cond_6
    if-eqz v3, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2d -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x2d -> :sswitch_1
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method private containsName(Landroid/icu/util/BytesTrie;Ljava/lang/CharSequence;)Z
    .locals 4

    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x5f

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-gt v3, v0, :cond_2

    const/16 v3, 0xd

    if-le v0, v3, :cond_0

    :cond_2
    invoke-virtual {v2}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    return v3

    :cond_3
    invoke-static {v0}, Landroid/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v3

    return v3
.end method

.method private findProperty(I)I
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    iget-object v4, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v2, v4, v6

    :goto_0
    if-lez v2, :cond_0

    iget-object v4, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v3, v4, v0

    iget-object v4, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v5, v0, 0x1

    aget v1, v4, v5

    add-int/lit8 v0, v0, 0x2

    if-ge p1, v3, :cond_1

    :cond_0
    return v6

    :cond_1
    if-ge p1, v1, :cond_2

    sub-int v4, p1, v3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    return v4

    :cond_2
    sub-int v4, v1, v3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private findPropertyValueNameGroup(II)I
    .locals 10

    const/4 v9, 0x0

    if-nez p1, :cond_0

    return v9

    :cond_0
    add-int/lit8 p1, p1, 0x1

    iget-object v7, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v5, p1, 0x1

    aget v2, v7, p1

    const/16 v7, 0x10

    if-ge v2, v7, :cond_4

    move p1, v5

    :goto_0
    if-lez v2, :cond_1

    iget-object v7, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v3, v7, p1

    iget-object v7, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v8, p1, 0x1

    aget v0, v7, v8

    add-int/lit8 p1, p1, 0x2

    if-ge p2, v3, :cond_2

    :cond_1
    return v9

    :cond_2
    if-ge p2, v0, :cond_3

    iget-object v7, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int v8, p1, p2

    sub-int/2addr v8, v3

    aget v7, v7, v8

    return v7

    :cond_3
    sub-int v7, v0, v3

    add-int/2addr p1, v7

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    move v6, v5

    add-int v7, v5, v2

    add-int/lit8 v1, v7, -0x10

    move p1, v5

    :goto_1
    iget-object v7, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v4, v7, p1

    if-lt p2, v4, :cond_1

    if-ne p2, v4, :cond_5

    iget-object v7, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int v8, v1, p1

    sub-int/2addr v8, v5

    aget v7, v7, v8

    return v7

    :cond_5
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v1, :cond_1

    goto :goto_1
.end method

.method private getName(II)Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ltz p2, :cond_0

    if-gt v2, p2, :cond_1

    :cond_0
    new-instance v3, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string/jumbo v4, "Invalid property (value) name choice"

    invoke-direct {v3, v4}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move p1, v0

    :goto_0
    if-lez p2, :cond_3

    :goto_1
    iget-object v3, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    move p1, v0

    goto :goto_0

    :cond_3
    move v1, p1

    :goto_2
    iget-object v3, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    if-ne v1, p1, :cond_5

    const/4 v3, 0x0

    return-object v3

    :cond_5
    iget-object v3, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPropertyOrValueEnum(ILjava/lang/CharSequence;)I
    .locals 2

    new-instance v0, Landroid/icu/util/BytesTrie;

    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->bytesTries:[B

    invoke-direct {v0, v1, p1}, Landroid/icu/util/BytesTrie;-><init>([BI)V

    invoke-direct {p0, v0, p2}, Landroid/icu/impl/UPropertyAliases;->containsName(Landroid/icu/util/BytesTrie;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/icu/util/BytesTrie;->getValue()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method private load(Ljava/nio/ByteBuffer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    sget-object v8, Landroid/icu/impl/UPropertyAliases;->IS_ACCEPTABLE:Landroid/icu/impl/UPropertyAliases$IsAcceptable;

    const v9, 0x706e616d

    invoke-static {p1, v9, v8}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    div-int/lit8 v2, v8, 0x4

    const/16 v8, 0x8

    if-ge v2, v8, :cond_0

    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "pnames.icu: not enough indexes"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    new-array v1, v2, [I

    mul-int/lit8 v8, v2, 0x4

    aput v8, v1, v10

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    aput v8, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget v6, v1, v10

    const/4 v8, 0x1

    aget v3, v1, v8

    sub-int v8, v3, v6

    div-int/lit8 v5, v8, 0x4

    invoke-static {p1, v5, v10}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v8

    iput-object v8, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    move v6, v3

    const/4 v8, 0x2

    aget v3, v1, v8

    sub-int v4, v3, v6

    new-array v8, v4, [B

    iput-object v8, p0, Landroid/icu/impl/UPropertyAliases;->bytesTries:[B

    iget-object v8, p0, Landroid/icu/impl/UPropertyAliases;->bytesTries:[B

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v6, v3

    const/4 v8, 0x3

    aget v3, v1, v8

    sub-int v4, v3, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPropertyEnum(Ljava/lang/CharSequence;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyOrValueEnum(ILjava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getPropertyName(II)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Landroid/icu/impl/UPropertyAliases;->findProperty(I)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid property enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v1, v1, v0

    invoke-direct {p0, v1, p2}, Landroid/icu/impl/UPropertyAliases;->getName(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPropertyValueEnum(ILjava/lang/CharSequence;)I
    .locals 4

    invoke-direct {p0, p1}, Landroid/icu/impl/UPropertyAliases;->findProperty(I)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid property enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v2

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") does not have named values"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v1, v1, v0

    invoke-direct {p0, v1, p2}, Landroid/icu/impl/UPropertyAliases;->getPropertyOrValueEnum(ILjava/lang/CharSequence;)I

    move-result v1

    return v1
.end method

.method public getPropertyValueEnumNoThrow(ILjava/lang/CharSequence;)I
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Landroid/icu/impl/UPropertyAliases;->findProperty(I)I

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v2

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v1, v1, v0

    invoke-direct {p0, v1, p2}, Landroid/icu/impl/UPropertyAliases;->getPropertyOrValueEnum(ILjava/lang/CharSequence;)I

    move-result v1

    return v1
.end method

.method public getPropertyValueName(III)Ljava/lang/String;
    .locals 5

    invoke-direct {p0, p1}, Landroid/icu/impl/UPropertyAliases;->findProperty(I)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid property enum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    invoke-direct {p0, v2, p2}, Landroid/icu/impl/UPropertyAliases;->findPropertyValueNameGroup(II)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") does not have named values"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-direct {p0, v0, p3}, Landroid/icu/impl/UPropertyAliases;->getName(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
