.class public Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;
.super Ljava/lang/Object;
.source "Crypt.java"


# static fields
.field private static C:[B

.field private static D:[B

.field private static E:[B

.field private static FP:[B

.field private static IP:[B

.field private static KS:[[B

.field private static MAX_CRYPT_BITS_SIZE:I

.field private static MAX_ENCRYPT_SIZE:I

.field private static P:[B

.field private static PC1_C:[B

.field private static PC1_D:[B

.field private static PC2_C:[B

.field private static PC2_D:[B

.field private static S:[[B

.field private static e2:[B

.field private static m_cryptCryptByte:[B

.field private static m_szCryptCryptResult:Ljava/lang/String;

.field private static preS:[B

.field private static shifts:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v1, 0x18

    const/16 v6, 0x10

    const/16 v5, 0x30

    const/16 v4, 0x1c

    const/16 v3, 0x40

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->IP:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->FP:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->PC1_C:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->PC1_D:[B

    new-array v0, v6, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->shifts:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->PC2_C:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->PC2_D:[B

    new-array v0, v5, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->e2:[B

    const/16 v0, 0x8

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->S:[[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->P:[B

    sput v3, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->MAX_CRYPT_BITS_SIZE:I

    sput v6, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->MAX_ENCRYPT_SIZE:I

    sget v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->MAX_ENCRYPT_SIZE:I

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->m_cryptCryptByte:[B

    new-array v0, v4, [B

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->C:[B

    new-array v0, v4, [B

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->D:[B

    filled-new-array {v6, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->KS:[[B

    new-array v0, v5, [B

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->E:[B

    new-array v0, v5, [B

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->preS:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x40t
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x1bt
        0x13t
        0xbt
        0x3t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ft
        0x37t
        0x2ft
        0x27t
        0x1ft
        0x17t
        0xft
        0x7t
    .end array-data

    :array_1
    .array-data 1
        0x28t
        0x8t
        0x30t
        0x10t
        0x38t
        0x18t
        0x40t
        0x20t
        0x27t
        0x7t
        0x2ft
        0xft
        0x37t
        0x17t
        0x3ft
        0x1ft
        0x26t
        0x6t
        0x2et
        0xet
        0x36t
        0x16t
        0x3et
        0x1et
        0x25t
        0x5t
        0x2dt
        0xdt
        0x35t
        0x15t
        0x3dt
        0x1dt
        0x24t
        0x4t
        0x2ct
        0xct
        0x34t
        0x14t
        0x3ct
        0x1ct
        0x23t
        0x3t
        0x2bt
        0xbt
        0x33t
        0x13t
        0x3bt
        0x1bt
        0x22t
        0x2t
        0x2at
        0xat
        0x32t
        0x12t
        0x3at
        0x1at
        0x21t
        0x1t
        0x29t
        0x9t
        0x31t
        0x11t
        0x39t
        0x19t
    .end array-data

    :array_2
    .array-data 1
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x1bt
        0x13t
        0xbt
        0x3t
        0x3ct
        0x34t
        0x2ct
        0x24t
    .end array-data

    :array_3
    .array-data 1
        0x3ft
        0x37t
        0x2ft
        0x27t
        0x1ft
        0x17t
        0xft
        0x7t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x1ct
        0x14t
        0xct
        0x4t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        0xet
        0x11t
        0xbt
        0x18t
        0x1t
        0x5t
        0x3t
        0x1ct
        0xft
        0x6t
        0x15t
        0xat
        0x17t
        0x13t
        0xct
        0x4t
        0x1at
        0x8t
        0x10t
        0x7t
        0x1bt
        0x14t
        0xdt
        0x2t
    .end array-data

    :array_6
    .array-data 1
        0x29t
        0x34t
        0x1ft
        0x25t
        0x2ft
        0x37t
        0x1et
        0x28t
        0x33t
        0x2dt
        0x21t
        0x30t
        0x2ct
        0x31t
        0x27t
        0x38t
        0x22t
        0x35t
        0x2et
        0x2at
        0x32t
        0x24t
        0x1dt
        0x20t
    .end array-data

    :array_7
    .array-data 1
        0x20t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x1t
    .end array-data

    :array_8
    .array-data 1
        0xet
        0x4t
        0xdt
        0x1t
        0x2t
        0xft
        0xbt
        0x8t
        0x3t
        0xat
        0x6t
        0xct
        0x5t
        0x9t
        0x0t
        0x7t
        0x0t
        0xft
        0x7t
        0x4t
        0xet
        0x2t
        0xdt
        0x1t
        0xat
        0x6t
        0xct
        0xbt
        0x9t
        0x5t
        0x3t
        0x8t
        0x4t
        0x1t
        0xet
        0x8t
        0xdt
        0x6t
        0x2t
        0xbt
        0xft
        0xct
        0x9t
        0x7t
        0x3t
        0xat
        0x5t
        0x0t
        0xft
        0xct
        0x8t
        0x2t
        0x4t
        0x9t
        0x1t
        0x7t
        0x5t
        0xbt
        0x3t
        0xet
        0xat
        0x0t
        0x6t
        0xdt
    .end array-data

    :array_9
    .array-data 1
        0xft
        0x1t
        0x8t
        0xet
        0x6t
        0xbt
        0x3t
        0x4t
        0x9t
        0x7t
        0x2t
        0xdt
        0xct
        0x0t
        0x5t
        0xat
        0x3t
        0xdt
        0x4t
        0x7t
        0xft
        0x2t
        0x8t
        0xet
        0xct
        0x0t
        0x1t
        0xat
        0x6t
        0x9t
        0xbt
        0x5t
        0x0t
        0xet
        0x7t
        0xbt
        0xat
        0x4t
        0xdt
        0x1t
        0x5t
        0x8t
        0xct
        0x6t
        0x9t
        0x3t
        0x2t
        0xft
        0xdt
        0x8t
        0xat
        0x1t
        0x3t
        0xft
        0x4t
        0x2t
        0xbt
        0x6t
        0x7t
        0xct
        0x0t
        0x5t
        0xet
        0x9t
    .end array-data

    :array_a
    .array-data 1
        0xat
        0x0t
        0x9t
        0xet
        0x6t
        0x3t
        0xft
        0x5t
        0x1t
        0xdt
        0xct
        0x7t
        0xbt
        0x4t
        0x2t
        0x8t
        0xdt
        0x7t
        0x0t
        0x9t
        0x3t
        0x4t
        0x6t
        0xat
        0x2t
        0x8t
        0x5t
        0xet
        0xct
        0xbt
        0xft
        0x1t
        0xdt
        0x6t
        0x4t
        0x9t
        0x8t
        0xft
        0x3t
        0x0t
        0xbt
        0x1t
        0x2t
        0xct
        0x5t
        0xat
        0xet
        0x7t
        0x1t
        0xat
        0xdt
        0x0t
        0x6t
        0x9t
        0x8t
        0x7t
        0x4t
        0xft
        0xet
        0x3t
        0xbt
        0x5t
        0x2t
        0xct
    .end array-data

    :array_b
    .array-data 1
        0x7t
        0xdt
        0xet
        0x3t
        0x0t
        0x6t
        0x9t
        0xat
        0x1t
        0x2t
        0x8t
        0x5t
        0xbt
        0xct
        0x4t
        0xft
        0xdt
        0x8t
        0xbt
        0x5t
        0x6t
        0xft
        0x0t
        0x3t
        0x4t
        0x7t
        0x2t
        0xct
        0x1t
        0xat
        0xet
        0x9t
        0xat
        0x6t
        0x9t
        0x0t
        0xct
        0xbt
        0x7t
        0xdt
        0xft
        0x1t
        0x3t
        0xet
        0x5t
        0x2t
        0x8t
        0x4t
        0x3t
        0xft
        0x0t
        0x6t
        0xat
        0x1t
        0xdt
        0x8t
        0x9t
        0x4t
        0x5t
        0xbt
        0xct
        0x7t
        0x2t
        0xet
    .end array-data

    :array_c
    .array-data 1
        0x2t
        0xct
        0x4t
        0x1t
        0x7t
        0xat
        0xbt
        0x6t
        0x8t
        0x5t
        0x3t
        0xft
        0xdt
        0x0t
        0xet
        0x9t
        0xet
        0xbt
        0x2t
        0xct
        0x4t
        0x7t
        0xdt
        0x1t
        0x5t
        0x0t
        0xft
        0xat
        0x3t
        0x9t
        0x8t
        0x6t
        0x4t
        0x2t
        0x1t
        0xbt
        0xat
        0xdt
        0x7t
        0x8t
        0xft
        0x9t
        0xct
        0x5t
        0x6t
        0x3t
        0x0t
        0xet
        0xbt
        0x8t
        0xct
        0x7t
        0x1t
        0xet
        0x2t
        0xdt
        0x6t
        0xft
        0x0t
        0x9t
        0xat
        0x4t
        0x5t
        0x3t
    .end array-data

    :array_d
    .array-data 1
        0xct
        0x1t
        0xat
        0xft
        0x9t
        0x2t
        0x6t
        0x8t
        0x0t
        0xdt
        0x3t
        0x4t
        0xet
        0x7t
        0x5t
        0xbt
        0xat
        0xft
        0x4t
        0x2t
        0x7t
        0xct
        0x9t
        0x5t
        0x6t
        0x1t
        0xdt
        0xet
        0x0t
        0xbt
        0x3t
        0x8t
        0x9t
        0xet
        0xft
        0x5t
        0x2t
        0x8t
        0xct
        0x3t
        0x7t
        0x0t
        0x4t
        0xat
        0x1t
        0xdt
        0xbt
        0x6t
        0x4t
        0x3t
        0x2t
        0xct
        0x9t
        0x5t
        0xft
        0xat
        0xbt
        0xet
        0x1t
        0x7t
        0x6t
        0x0t
        0x8t
        0xdt
    .end array-data

    :array_e
    .array-data 1
        0x4t
        0xbt
        0x2t
        0xet
        0xft
        0x0t
        0x8t
        0xdt
        0x3t
        0xct
        0x9t
        0x7t
        0x5t
        0xat
        0x6t
        0x1t
        0xdt
        0x0t
        0xbt
        0x7t
        0x4t
        0x9t
        0x1t
        0xat
        0xet
        0x3t
        0x5t
        0xct
        0x2t
        0xft
        0x8t
        0x6t
        0x1t
        0x4t
        0xbt
        0xdt
        0xct
        0x3t
        0x7t
        0xet
        0xat
        0xft
        0x6t
        0x8t
        0x0t
        0x5t
        0x9t
        0x2t
        0x6t
        0xbt
        0xdt
        0x8t
        0x1t
        0x4t
        0xat
        0x7t
        0x9t
        0x5t
        0x0t
        0xft
        0xet
        0x2t
        0x3t
        0xct
    .end array-data

    :array_f
    .array-data 1
        0xdt
        0x2t
        0x8t
        0x4t
        0x6t
        0xft
        0xbt
        0x1t
        0xat
        0x9t
        0x3t
        0xet
        0x5t
        0x0t
        0xct
        0x7t
        0x1t
        0xft
        0xdt
        0x8t
        0xat
        0x3t
        0x7t
        0x4t
        0xct
        0x5t
        0x6t
        0xbt
        0x0t
        0xet
        0x9t
        0x2t
        0x7t
        0xbt
        0x4t
        0x1t
        0x9t
        0xct
        0xet
        0x2t
        0x0t
        0x6t
        0xat
        0xdt
        0xft
        0x3t
        0x5t
        0x8t
        0x2t
        0x1t
        0xet
        0x7t
        0x4t
        0xat
        0x8t
        0xdt
        0xft
        0xct
        0x9t
        0x0t
        0x3t
        0x5t
        0x6t
        0xbt
    .end array-data

    :array_10
    .array-data 1
        0x10t
        0x7t
        0x14t
        0x15t
        0x1dt
        0xct
        0x1ct
        0x11t
        0x1t
        0xft
        0x17t
        0x1at
        0x5t
        0x12t
        0x1ft
        0xat
        0x2t
        0x8t
        0x18t
        0xet
        0x20t
        0x1bt
        0x3t
        0x9t
        0x13t
        0xdt
        0x1et
        0x6t
        0x16t
        0xbt
        0x4t
        0x19t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cryptDESEncrypt([B)[B
    .locals 20

    const/16 v17, 0x20

    move/from16 v0, v17

    new-array v6, v0, [B

    const/16 v17, 0x20

    move/from16 v0, v17

    new-array v8, v0, [B

    const/16 v17, 0x20

    move/from16 v0, v17

    new-array v7, v0, [B

    const/16 v17, 0x20

    move/from16 v0, v17

    new-array v1, v0, [B

    const/4 v4, 0x0

    :goto_0
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v4, v0, :cond_0

    sget-object v17, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->IP:[B

    aget-byte v17, v17, v4

    add-int/lit8 v17, v17, -0x1

    aget-byte v17, p1, v17

    aput-byte v17, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v17, 0x40

    move/from16 v0, v17

    if-ge v4, v0, :cond_1

    add-int/lit8 v17, v4, -0x20

    sget-object v18, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->IP:[B

    aget-byte v18, v18, v4

    add-int/lit8 v18, v18, -0x1

    aget-byte v18, p1, v18

    aput-byte v18, v8, v17

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_2
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v3, v0, :cond_7

    move v2, v3

    const/4 v4, 0x0

    :goto_3
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v4, v0, :cond_2

    aget-byte v17, v8, v4

    aput-byte v17, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_4
    const/16 v17, 0x30

    move/from16 v0, v17

    if-ge v4, v0, :cond_3

    sget-object v17, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->preS:[B

    sget-object v18, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->E:[B

    aget-byte v18, v18, v4

    add-int/lit8 v18, v18, -0x1

    aget-byte v18, v8, v18

    sget-object v19, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->KS:[[B

    aget-object v19, v19, v2

    aget-byte v19, v19, v4

    xor-int v18, v18, v19

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v17, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_5
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ge v4, v0, :cond_4

    mul-int/lit8 v17, v4, 0x6

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v16, v0

    sget-object v17, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->preS:[B

    aget-byte v17, v17, v16

    shl-int/lit8 v9, v17, 0x5

    sget-object v17, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->preS:[B

    add-int/lit8 v18, v16, 0x1

    aget-byte v17, v17, v18

    shl-int/lit8 v10, v17, 0x3

    sget-object v17, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->preS:[B

    add-int/lit8 v18, v16, 0x2

    aget-byte v17, v17, v18

    shl-int/lit8 v11, v17, 0x2

    sget-object v17, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->preS:[B

    add-int/lit8 v18, v16, 0x3

    aget-byte v17, v17, v18

    shl-int/lit8 v12, v17, 0x1

    sget-object v17, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->preS:[B

    add-int/lit8 v18, v16, 0x4

    aget-byte v13, v17, v18

    sget-object v17, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->preS:[B

    add-int/lit8 v18, v16, 0x5

    aget-byte v17, v17, v18

    shl-int/lit8 v14, v17, 0x4

    add-int v17, v9, v10

    add-int v17, v17, v11

    add-int v17, v17, v12

    add-int v17, v17, v13

    add-int v15, v17, v14

    sget-object v17, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->S:[[B

    aget-object v17, v17, v4

    aget-byte v5, v17, v15

    mul-int/lit8 v17, v4, 0x4

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v16, v0

    shr-int/lit8 v17, v5, 0x3

    and-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v1, v16

    add-int/lit8 v17, v16, 0x1

    shr-int/lit8 v18, v5, 0x2

    and-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v1, v17

    add-int/lit8 v17, v16, 0x2

    shr-int/lit8 v18, v5, 0x1

    and-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v1, v17

    add-int/lit8 v17, v16, 0x3

    and-int/lit8 v18, v5, 0x1

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v1, v17

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_4
    const/4 v4, 0x0

    :goto_6
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v4, v0, :cond_5

    aget-byte v17, v6, v4

    sget-object v18, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->P:[B

    aget-byte v18, v18, v4

    add-int/lit8 v18, v18, -0x1

    aget-byte v18, v1, v18

    xor-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    :goto_7
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v4, v0, :cond_6

    aget-byte v17, v7, v4

    aput-byte v17, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_8
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v4, v0, :cond_8

    aget-byte v16, v6, v4

    aget-byte v17, v8, v4

    aput-byte v17, v6, v4

    aput-byte v16, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    :goto_9
    const/16 v17, 0x40

    move/from16 v0, v17

    if-ge v4, v0, :cond_a

    sget-object v17, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->FP:[B

    aget-byte v2, v17, v4

    const/16 v17, 0x21

    move/from16 v0, v17

    if-ge v2, v0, :cond_9

    sget-object v17, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->FP:[B

    aget-byte v17, v17, v4

    add-int/lit8 v17, v17, -0x1

    aget-byte v17, v6, v17

    aput-byte v17, p1, v4

    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_9
    sget-object v17, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->FP:[B

    aget-byte v17, v17, v4

    add-int/lit8 v17, v17, -0x21

    aget-byte v17, v8, v17

    aput-byte v17, p1, v4

    goto :goto_a

    :cond_a
    return-object p1
.end method

.method private cryptEExpandsion([B)V
    .locals 10

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    move v4, v3

    :goto_0
    const/4 v6, 0x2

    if-ge v1, v6, :cond_0

    add-int/lit8 v3, v4, 0x1

    aget-byte v0, p1, v4

    sget-object v6, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->m_cryptCryptByte:[B

    aput-byte v0, v6, v1

    const/16 v6, 0x5a

    if-le v0, v6, :cond_3

    add-int/lit8 v6, v0, -0x3b

    int-to-byte v0, v6

    :goto_1
    const/4 v2, 0x0

    :goto_2
    const/4 v6, 0x6

    if-ge v2, v6, :cond_5

    shr-int v6, v0, v2

    and-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->E:[B

    mul-int/lit8 v7, v1, 0x6

    add-int/2addr v7, v2

    aget-byte v5, v6, v7

    sget-object v6, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->E:[B

    mul-int/lit8 v7, v1, 0x6

    add-int/2addr v7, v2

    sget-object v8, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->E:[B

    mul-int/lit8 v9, v1, 0x6

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x18

    aget-byte v8, v8, v9

    aput-byte v8, v6, v7

    sget-object v6, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->E:[B

    mul-int/lit8 v7, v1, 0x6

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x18

    aput-byte v5, v6, v7

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/16 v6, 0x39

    if-le v0, v6, :cond_4

    add-int/lit8 v6, v0, -0x35

    int-to-byte v0, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v0, -0x2e

    int-to-byte v0, v6

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    goto :goto_0
.end method

.method private cryptEncrypt([B)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x19

    if-ge v1, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->cryptDESEncrypt([B)[B

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v3, 0xb

    if-ge v1, v3, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    shl-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    mul-int/lit8 v3, v1, 0x6

    add-int/2addr v3, v2

    aget-byte v3, p1, v3

    or-int/2addr v3, v0

    int-to-byte v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v0, 0x2e

    int-to-byte v0, v3

    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    add-int/lit8 v3, v0, 0x7

    int-to-byte v0, v3

    :cond_2
    const/16 v3, 0x5a

    if-le v0, v3, :cond_3

    add-int/lit8 v3, v0, 0x6

    int-to-byte v0, v3

    :cond_3
    sget-object v3, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->m_cryptCryptByte:[B

    add-int/lit8 v4, v1, 0x2

    aput-byte v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->m_cryptCryptByte:[B

    add-int/lit8 v4, v1, 0x2

    aput-byte v5, v3, v4

    sget-object v3, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->m_cryptCryptByte:[B

    aget-byte v3, v3, v6

    if-nez v3, :cond_5

    sget-object v3, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->m_cryptCryptByte:[B

    sget-object v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->m_cryptCryptByte:[B

    aget-byte v4, v4, v5

    aput-byte v4, v3, v6

    :cond_5
    return-void
.end method

.method private cryptInitPassword([B[B)[B
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    const/4 p2, 0x0

    :cond_1
    return-object p2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v1, 0x1

    aput-byte v5, p2, v1

    :cond_3
    array-length v4, p1

    if-ge v3, v4, :cond_4

    aget-byte v4, p1, v3

    if-eqz v4, :cond_4

    sget v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->MAX_CRYPT_BITS_SIZE:I

    if-ge v0, v4, :cond_4

    const/4 v2, 0x6

    move v1, v0

    :goto_0
    if-ltz v2, :cond_2

    aget-byte v4, p1, v3

    shr-int/2addr v4, v2

    and-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_0

    :cond_4
    :goto_1
    sget v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->MAX_CRYPT_BITS_SIZE:I

    add-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_1

    add-int/lit8 v1, v0, 0x1

    aput-byte v5, p2, v0

    move v0, v1

    goto :goto_1
.end method

.method private cryptSetKey([B)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x1b

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x1c

    if-ge v0, v4, :cond_0

    sget-object v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->C:[B

    sget-object v5, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->PC1_C:[B

    aget-byte v5, v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p1, v5

    aput-byte v5, v4, v0

    sget-object v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->D:[B

    sget-object v5, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->PC1_D:[B

    aget-byte v5, v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p1, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v4, 0x10

    if-ge v0, v4, :cond_5

    const/4 v2, 0x0

    :goto_2
    sget-object v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->shifts:[B

    aget-byte v4, v4, v0

    if-ge v2, v4, :cond_3

    sget-object v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->C:[B

    aget-byte v3, v4, v9

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_1

    sget-object v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->C:[B

    sget-object v5, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->C:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v5, v5, v6

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    sget-object v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->C:[B

    aput-byte v3, v4, v8

    sget-object v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->D:[B

    aget-byte v3, v4, v9

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v8, :cond_2

    sget-object v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->D:[B

    sget-object v5, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->D:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v5, v5, v6

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    sget-object v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->D:[B

    aput-byte v3, v4, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_5
    const/16 v4, 0x18

    if-ge v1, v4, :cond_4

    sget-object v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->KS:[[B

    aget-object v4, v4, v0

    sget-object v5, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->C:[B

    sget-object v6, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->PC2_C:[B

    aget-byte v6, v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-byte v5, v5, v6

    aput-byte v5, v4, v1

    sget-object v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->KS:[[B

    aget-object v4, v4, v0

    add-int/lit8 v5, v1, 0x18

    sget-object v6, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->D:[B

    sget-object v7, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->PC2_D:[B

    aget-byte v7, v7, v1

    add-int/lit8 v7, v7, -0x1c

    add-int/lit8 v7, v7, -0x1

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_6
    const/16 v4, 0x30

    if-ge v0, v4, :cond_6

    sget-object v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->E:[B

    sget-object v5, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->e2:[B

    aget-byte v5, v5, v0

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method private cryptZeroPassword([B)[B
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->MAX_CRYPT_BITS_SIZE:I

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public cryptGenerate(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6

    sget v3, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->MAX_CRYPT_BITS_SIZE:I

    add-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->cryptInitPassword([B[B)[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->cryptSetKey([B)V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->cryptZeroPassword([B)[B

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->cryptEExpandsion([B)V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->cryptEncrypt([B)V

    :cond_0
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->m_cryptCryptByte:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v3, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->m_szCryptCryptResult:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CryptResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->m_szCryptCryptResult:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/LoggerData;->H(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v3, Lcom/samsung/android/app/omcagent/network/auth/sec/Crypt;->m_szCryptCryptResult:Ljava/lang/String;

    return-object v3

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    const-string v4, "xdbCryptGenerate Fail"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/LoggerData;->W(Ljava/lang/String;)V

    goto :goto_0
.end method
