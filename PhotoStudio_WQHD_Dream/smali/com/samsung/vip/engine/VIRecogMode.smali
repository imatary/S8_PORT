.class public Lcom/samsung/vip/engine/VIRecogMode;
.super Ljava/lang/Object;
.source "VIRecogMode.java"


# static fields
.field private static final LANG_LIST_ID:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/16 v0, 0x14

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/vip/engine/VIRecogMode;->LANG_LIST_ID:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0xa
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xb
    .end array-data

    :array_4
    .array-data 4
        0x5
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xe
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xf
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x10
    .end array-data

    :array_9
    .array-data 4
        0x11
        0x11
    .end array-data

    :array_a
    .array-data 4
        0x12
        0x12
    .end array-data

    :array_b
    .array-data 4
        0x13
        0x13
    .end array-data

    :array_c
    .array-data 4
        0x14
        0x14
    .end array-data

    :array_d
    .array-data 4
        0x15
        0x15
    .end array-data

    :array_e
    .array-data 4
        0x16
        0x16
    .end array-data

    :array_f
    .array-data 4
        0x17
        0x19
    .end array-data

    :array_10
    .array-data 4
        0x18
        0x1a
    .end array-data

    :array_11
    .array-data 4
        0x1c
        0x1c
    .end array-data

    :array_12
    .array-data 4
        0x1d
        0x1d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguageMode(IZ)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    move v1, p0

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/samsung/vip/engine/VIRecogMode;->LANG_LIST_ID:[[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    sget-object v3, Lcom/samsung/vip/engine/VIRecogMode;->LANG_LIST_ID:[[I

    aget-object v3, v3, v0

    aget v3, v3, v2

    if-ne v1, v3, :cond_2

    sget-object v3, Lcom/samsung/vip/engine/VIRecogMode;->LANG_LIST_ID:[[I

    aget-object v3, v3, v0

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    aget v1, v3, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRangeMode(ZZZ)S
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz p1, :cond_1

    add-int/lit8 v1, v0, 0x2

    int-to-short v0, v1

    :cond_1
    if-eqz p2, :cond_2

    add-int/lit8 v1, v0, 0x4

    int-to-short v0, v1

    :cond_2
    return v0
.end method
