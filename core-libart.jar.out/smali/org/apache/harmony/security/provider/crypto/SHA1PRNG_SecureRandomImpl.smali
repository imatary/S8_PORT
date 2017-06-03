.class public Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;
.super Ljava/security/SecureRandomSpi;
.source "SHA1PRNG_SecureRandomImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final COUNTER_BASE:I = 0x0

.field private static final END_FLAGS:[I

.field private static final EXTRAFRAME_OFFSET:I = 0x5

.field private static final FRAME_LENGTH:I = 0x10

.field private static final FRAME_OFFSET:I = 0x15

.field private static final HASHBYTES_TO_USE:I = 0x14

.field private static final HASHCOPY_OFFSET:I = 0x0

.field private static final LEFT:[I

.field private static final MASK:[I

.field private static final MAX_BYTES:I = 0x30

.field private static final NEXT_BYTES:I = 0x2

.field private static final RIGHT1:[I

.field private static final RIGHT2:[I

.field private static final SET_SEED:I = 0x1

.field private static final UNDEFINED:I = 0x0

.field private static devURandom:Ljava/io/FileInputStream; = null

.field private static myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl; = null

.field private static final serialVersionUID:J = 0x3f0091d1f89aebbL


# instance fields
.field private transient copies:[I

.field private transient counter:J

.field private transient nextBIndex:I

.field private transient nextBytes:[B

.field private transient seed:[I

.field private transient seedLength:J

.field private transient state:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x18

    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/dev/urandom"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->devURandom:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x800000

    const v3, 0x8000

    const/16 v4, 0x80

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    const/16 v1, 0x28

    const/16 v2, 0x30

    const/16 v3, 0x38

    filled-new-array {v5, v1, v2, v3}, [I

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT1:[I

    filled-new-array {v5, v6, v7, v8}, [I

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT2:[I

    filled-new-array {v5, v8, v7, v6}, [I

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->LEFT:[I

    const/4 v1, -0x1

    const v2, 0xffffff

    const v3, 0xffff

    const/16 v4, 0xff

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->MASK:[I

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/16 v3, 0x14

    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    const/16 v0, 0x57

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const v1, 0x67452301

    const/16 v2, 0x52

    aput v1, v0, v2

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const v1, -0x10325477

    const/16 v2, 0x53

    aput v1, v0, v2

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const v1, -0x67452302

    const/16 v2, 0x54

    aput v1, v0, v2

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const v1, 0x10325476

    const/16 v2, 0x55

    aput v1, v0, v2

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const v1, -0x3c2d1e10

    const/16 v2, 0x56

    aput v1, v0, v2

    iput-wide v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    const/16 v0, 0x25

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    iput v3, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    iput-wide v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    return-void
.end method

.method private static getRandomBytes(I)[B
    .locals 6

    if-gtz p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Too few bytes requested: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    :try_start_0
    sget-object v3, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    invoke-static {v3}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    new-array v2, p0, [B

    sget-object v3, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->devURandom:Ljava/io/FileInputStream;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, p0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    return-object v2

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v3, Ljava/security/ProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " random bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    invoke-static {v1}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    throw v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/16 v6, 0x10

    const/16 v4, 0x51

    const/4 v5, 0x5

    const/16 v2, 0x57

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v2, 0x25

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v2, 0x14

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v4

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x3

    shr-int/lit8 v1, v2, 0x2

    iget v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_6

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v3, v0, 0x52

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v2, v2, v4

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v6

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    const/16 v4, 0x11

    aput v3, v2, v4

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    const/16 v4, 0x1e

    aput v3, v2, v4

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    const/16 v4, 0x1f

    aput v3, v2, v4

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_3

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    add-int/lit8 v3, v0, 0x15

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v5, :cond_5

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v5, :cond_6

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v3, v0, 0x52

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    iget v3, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    iget v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    rsub-int/lit8 v4, v4, 0x14

    invoke-static {p1, v2, v3, v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    return-void
.end method

.method private updateSeed([B)V
    .locals 4

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->updateHash([I[BII)V

    iget-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x5

    const/16 v0, 0x1a

    const/16 v1, 0x2a

    iget-wide v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    invoke-virtual {p1, v8, v9}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    iget-wide v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    invoke-virtual {p1, v8, v9}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x51

    aget v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x51

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x3

    shr-int/lit8 v4, v7, 0x2

    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    add-int/lit8 v7, v4, 0x5

    new-array v3, v7, [I

    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9, v4}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x52

    const/4 v9, 0x5

    invoke-static {v7, v8, v3, v4, v9}, Ljava/lang/System;->arraycopy([II[III)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    array-length v7, v3

    if-ge v2, v7, :cond_2

    aget v7, v3, v2

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x51

    aget v7, v7, v8

    const/16 v8, 0x30

    if-ge v7, v8, :cond_1

    add-int/lit8 v7, v4, 0x1a

    new-array v3, v7, [I

    :goto_2
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v7, v8, v3, v5, v9}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v5, v5, 0x10

    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v8, 0x15

    invoke-static {v7, v8, v3, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/2addr v5, v4

    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-static {v7, v8, v3, v5, v9}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v5, v5, 0x5

    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x52

    const/4 v9, 0x5

    invoke-static {v7, v8, v3, v5, v9}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    :cond_1
    add-int/lit8 v7, v4, 0x2a

    new-array v3, v7, [I

    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x10

    aget v7, v7, v8

    aput v7, v3, v5

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v9, 0x11

    aget v8, v8, v9

    aput v8, v3, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v9, 0x1e

    aget v8, v8, v9

    aput v8, v3, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v9, 0x1f

    aget v8, v8, v9

    aput v8, v3, v7

    const/4 v5, 0x4

    goto :goto_2

    :cond_2
    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    iget v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    iget v9, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    rsub-int/lit8 v9, v9, 0x14

    invoke-virtual {p1, v7, v8, v9}, Ljava/io/ObjectOutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized engineGenerateSeed(I)[B
    .locals 3

    monitor-enter p0

    if-gez p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    if-nez v1, :cond_2

    new-instance v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    invoke-direct {v1}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;-><init>()V

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->getRandomBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->engineSetSeed([B)V

    :cond_2
    new-array v0, p1, [B

    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->engineNextBytes([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method protected declared-synchronized engineNextBytes([B)V
    .locals 18

    monitor-enter p0

    const/4 v4, 0x7

    if-nez p1, :cond_0

    :try_start_0
    new-instance v11, Ljava/lang/NullPointerException;

    const-string/jumbo v12, "bytes == null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    if-nez v11, :cond_2

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    if-nez v11, :cond_4

    const/16 v11, 0x14

    invoke-static {v11}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->getRandomBytes(I)[B

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->updateSeed([B)V

    const/16 v11, 0x14

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    if-nez v11, :cond_3

    const/4 v8, 0x0

    :cond_1
    :goto_1
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    move-object/from16 v0, p1

    array-length v11, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_7

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    add-int/lit8 v11, v11, 0x7

    shr-int/lit8 v8, v11, 0x2

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    add-int/lit8 v11, v11, 0x7

    shr-int/lit8 v8, v11, 0x2

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v13, 0x52

    const/4 v14, 0x0

    const/4 v15, 0x5

    invoke-static {v11, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v5, v8, 0x3

    :goto_2
    const/16 v11, 0x12

    if-ge v5, v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v12, 0x0

    aput v12, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    const/4 v11, 0x3

    shl-long/2addr v12, v11

    const-wide/16 v14, 0x40

    add-long v2, v12, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    const/16 v12, 0x30

    if-ge v11, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x20

    ushr-long v12, v2, v12

    long-to-int v12, v12

    const/16 v13, 0xe

    aput v12, v11, v13

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const-wide/16 v12, -0x1

    and-long/2addr v12, v2

    long-to-int v12, v12

    const/16 v13, 0xf

    aput v12, v11, v13

    :goto_3
    const/16 v11, 0x14

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v12, 0x20

    ushr-long v12, v2, v12

    long-to-int v12, v12

    const/16 v13, 0x13

    aput v12, v11, v13

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const-wide/16 v12, -0x1

    and-long/2addr v12, v2

    long-to-int v12, v12

    const/16 v13, 0x14

    aput v12, v11, v13

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    rsub-int/lit8 v11, v11, 0x14

    move-object/from16 v0, p1

    array-length v12, v0

    add-int/lit8 v12, v12, 0x0

    if-ge v11, v12, :cond_9

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    rsub-int/lit8 v9, v11, 0x14

    :goto_4
    if-lez v9, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    move-object/from16 v0, p1

    invoke-static {v11, v12, v0, v10, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    add-int/2addr v11, v9

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    add-int/lit8 v10, v9, 0x0

    :cond_8
    move-object/from16 v0, p1

    array-length v11, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v10, v11, :cond_a

    monitor-exit p0

    return-void

    :cond_9
    :try_start_3
    move-object/from16 v0, p1

    array-length v11, v0

    add-int/lit8 v9, v11, 0x0

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    and-int/lit8 v9, v11, 0x3

    :cond_b
    if-nez v9, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    const/16 v14, 0x20

    ushr-long/2addr v12, v14

    long-to-int v12, v12

    aput v12, v11, v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v12, v8, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    const-wide/16 v16, -0x1

    and-long v14, v14, v16

    long-to-int v13, v14

    aput v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v12, v8, 0x2

    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v11, v12

    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    const/16 v12, 0x30

    if-le v11, v12, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v13, 0x10

    aget v12, v12, v13

    const/4 v13, 0x5

    aput v12, v11, v13

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v13, 0x11

    aget v12, v12, v13

    const/4 v13, 0x6

    aput v12, v11, v13

    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-static {v11}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    const/16 v12, 0x30

    if-le v11, v12, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/4 v13, 0x0

    const/16 v14, 0x15

    const/16 v15, 0x10

    invoke-static {v11, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/16 v15, 0x10

    invoke-static {v11, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-static {v11}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v13, 0x15

    const/4 v14, 0x0

    const/16 v15, 0x10

    invoke-static {v11, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_d
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_6
    const/4 v11, 0x5

    if-ge v5, v11, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v12, v5, 0x52

    aget v7, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    ushr-int/lit8 v12, v7, 0x18

    int-to-byte v12, v12

    aput-byte v12, v11, v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    add-int/lit8 v12, v6, 0x1

    ushr-int/lit8 v13, v7, 0x10

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    add-int/lit8 v12, v6, 0x2

    ushr-int/lit8 v13, v7, 0x8

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    add-int/lit8 v12, v6, 0x3

    int-to-byte v13, v7

    aput-byte v13, v11, v12

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v12, v11, v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT1:[I

    aget v13, v13, v9

    ushr-long/2addr v14, v13

    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->MASK:[I

    aget v13, v13, v9

    int-to-long v0, v13

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    long-to-int v13, v14

    or-int/2addr v12, v13

    aput v12, v11, v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v12, v8, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT2:[I

    aget v13, v13, v9

    ushr-long/2addr v14, v13

    const-wide/16 v16, -0x1

    and-long v14, v14, v16

    long-to-int v13, v14

    aput v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v12, v8, 0x2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->LEFT:[I

    aget v13, v13, v9

    shl-long/2addr v14, v13

    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    aget v13, v13, v9

    int-to-long v0, v13

    move-wide/from16 v16, v0

    or-long v14, v14, v16

    long-to-int v13, v14

    aput v13, v11, v12

    goto/16 :goto_5

    :cond_f
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    move-object/from16 v0, p1

    array-length v11, v0

    sub-int/2addr v11, v10

    const/16 v12, 0x14

    if-ge v12, v11, :cond_11

    const/16 v6, 0x14

    :goto_7
    if-lez v6, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v11, v12, v0, v10, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/2addr v10, v6

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    add-int/2addr v11, v6

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    :cond_10
    move-object/from16 v0, p1

    array-length v11, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v10, v11, :cond_b

    monitor-exit p0

    return-void

    :cond_11
    :try_start_4
    move-object/from16 v0, p1

    array-length v11, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int v6, v11, v10

    goto :goto_7
.end method

.method protected declared-synchronized engineSetSeed([B)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "seed == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    iget-object v1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v2, 0x0

    const/16 v3, 0x52

    const/4 v4, 0x5

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    array-length v0, p1

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->updateSeed([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method
