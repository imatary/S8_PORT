.class public final Landroid/system/UnixSocketAddress;
.super Ljava/net/SocketAddress;
.source "UnixSocketAddress.java"


# static fields
.field private static final NAMED_PATH_LENGTH:I

.field private static final UNNAMED_PATH:[B


# instance fields
.field private sun_path:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/system/OsConstants;->UNIX_PATH_MAX:I

    sput v0, Landroid/system/UnixSocketAddress;->NAMED_PATH_LENGTH:I

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/system/UnixSocketAddress;->UNNAMED_PATH:[B

    return-void
.end method

.method private constructor <init>([B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sun_path must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    sget v1, Landroid/system/UnixSocketAddress;->NAMED_PATH_LENGTH:I

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sun_path exceeds the maximum length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    sget-object v0, Landroid/system/UnixSocketAddress;->UNNAMED_PATH:[B

    iput-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    :goto_0
    return-void

    :cond_2
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    iget-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public static createAbstract(Ljava/lang/String;)Landroid/system/UnixSocketAddress;
    .locals 5

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [B

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v2, Landroid/system/UnixSocketAddress;

    invoke-direct {v2, v1}, Landroid/system/UnixSocketAddress;-><init>([B)V

    return-object v2
.end method

.method public static createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;
    .locals 4

    const/4 v3, 0x0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [B

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v2, Landroid/system/UnixSocketAddress;

    invoke-direct {v2, v0}, Landroid/system/UnixSocketAddress;-><init>([B)V

    return-object v2
.end method

.method public static createUnnamed()Landroid/system/UnixSocketAddress;
    .locals 2

    new-instance v0, Landroid/system/UnixSocketAddress;

    sget-object v1, Landroid/system/UnixSocketAddress;->UNNAMED_PATH:[B

    invoke-direct {v0, v1}, Landroid/system/UnixSocketAddress;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/system/UnixSocketAddress;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/system/UnixSocketAddress;

    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    iget-object v2, v0, Landroid/system/UnixSocketAddress;->sun_path:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public getSunPath()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    array-length v1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    iget-object v2, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UnixSocketAddress[sun_path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
