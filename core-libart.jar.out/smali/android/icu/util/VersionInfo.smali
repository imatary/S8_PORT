.class public final Landroid/icu/util/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/util/VersionInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final ICU_DATA_VERSION:Landroid/icu/util/VersionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_DATA_VERSION_PATH:Ljava/lang/String; = "56b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_VERSION:Landroid/icu/util/VersionInfo;

.field private static final INVALID_VERSION_NUMBER_:Ljava/lang/String; = "Invalid version number: Version number may be negative or greater than 255"

.field private static final LAST_BYTE_MASK_:I = 0xff

.field private static final MAP_:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/util/VersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile TZDATA_VERSION:Ljava/lang/String;

.field public static final UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

.field public static final UCOL_RUNTIME_VERSION:Landroid/icu/util/VersionInfo;

.field public static final UCOL_TAILORINGS_VERSION:Landroid/icu/util/VersionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNICODE_1_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_1_0_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_1_1_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_1_1_5:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_1_2:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_1_5:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_1_8:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_1_9:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_0_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_1_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_1_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_2:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_4_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_4_0_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_4_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_5_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_5_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_5_2:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_6_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_6_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_6_2:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_6_3:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_7_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_8_0:Landroid/icu/util/VersionInfo;

.field private static final UNICODE_VERSION:Landroid/icu/util/VersionInfo;

.field private static volatile javaVersion:Landroid/icu/util/VersionInfo;


# instance fields
.field private m_version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/icu/util/VersionInfo;->MAP_:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_1_0:Landroid/icu/util/VersionInfo;

    invoke-static {v2, v1, v2, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_1_0_1:Landroid/icu/util/VersionInfo;

    invoke-static {v2, v2, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_1_1_0:Landroid/icu/util/VersionInfo;

    invoke-static {v2, v2, v5, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_1_1_5:Landroid/icu/util/VersionInfo;

    invoke-static {v3, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_2_0:Landroid/icu/util/VersionInfo;

    invoke-static {v3, v2, v3, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_2_1_2:Landroid/icu/util/VersionInfo;

    invoke-static {v3, v2, v5, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_2_1_5:Landroid/icu/util/VersionInfo;

    const/16 v0, 0x8

    invoke-static {v3, v2, v0, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_2_1_8:Landroid/icu/util/VersionInfo;

    const/16 v0, 0x9

    invoke-static {v3, v2, v0, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_2_1_9:Landroid/icu/util/VersionInfo;

    invoke-static {v4, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_3_0:Landroid/icu/util/VersionInfo;

    invoke-static {v4, v1, v2, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_3_0_1:Landroid/icu/util/VersionInfo;

    invoke-static {v4, v2, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_3_1_0:Landroid/icu/util/VersionInfo;

    invoke-static {v4, v2, v2, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_3_1_1:Landroid/icu/util/VersionInfo;

    invoke-static {v4, v3, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_3_2:Landroid/icu/util/VersionInfo;

    const/4 v0, 0x4

    invoke-static {v0, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_4_0:Landroid/icu/util/VersionInfo;

    const/4 v0, 0x4

    invoke-static {v0, v1, v2, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_4_0_1:Landroid/icu/util/VersionInfo;

    const/4 v0, 0x4

    invoke-static {v0, v2, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_4_1:Landroid/icu/util/VersionInfo;

    invoke-static {v5, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_5_0:Landroid/icu/util/VersionInfo;

    invoke-static {v5, v2, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_5_1:Landroid/icu/util/VersionInfo;

    invoke-static {v5, v3, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_5_2:Landroid/icu/util/VersionInfo;

    const/4 v0, 0x6

    invoke-static {v0, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_6_0:Landroid/icu/util/VersionInfo;

    const/4 v0, 0x6

    invoke-static {v0, v2, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_6_1:Landroid/icu/util/VersionInfo;

    const/4 v0, 0x6

    invoke-static {v0, v3, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_6_2:Landroid/icu/util/VersionInfo;

    const/4 v0, 0x6

    invoke-static {v0, v4, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_6_3:Landroid/icu/util/VersionInfo;

    const/4 v0, 0x7

    invoke-static {v0, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_7_0:Landroid/icu/util/VersionInfo;

    const/16 v0, 0x8

    invoke-static {v0, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_8_0:Landroid/icu/util/VersionInfo;

    const/16 v0, 0x38

    invoke-static {v0, v2, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    const/16 v0, 0x38

    invoke-static {v0, v2, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->ICU_DATA_VERSION:Landroid/icu/util/VersionInfo;

    sget-object v0, Landroid/icu/util/VersionInfo;->UNICODE_8_0:Landroid/icu/util/VersionInfo;

    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_VERSION:Landroid/icu/util/VersionInfo;

    const/16 v0, 0x9

    invoke-static {v0}, Landroid/icu/util/VersionInfo;->getInstance(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UCOL_RUNTIME_VERSION:Landroid/icu/util/VersionInfo;

    const/16 v0, 0x9

    invoke-static {v0}, Landroid/icu/util/VersionInfo;->getInstance(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

    invoke-static {v2}, Landroid/icu/util/VersionInfo;->getInstance(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UCOL_TAILORINGS_VERSION:Landroid/icu/util/VersionInfo;

    const/4 v0, 0x0

    sput-object v0, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    return-void
.end method

.method public static getInstance(I)Landroid/icu/util/VersionInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(II)Landroid/icu/util/VersionInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(III)Landroid/icu/util/VersionInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(IIII)Landroid/icu/util/VersionInfo;
    .locals 6

    const/16 v4, 0xff

    if-ltz p0, :cond_0

    if-le p0, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Invalid version number: Version number may be negative or greater than 255"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-ltz p1, :cond_0

    if-gt p1, v4, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v4, :cond_0

    if-ltz p3, :cond_0

    if-gt p3, v4, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroid/icu/util/VersionInfo;->getInt(IIII)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Landroid/icu/util/VersionInfo;->MAP_:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/VersionInfo;

    if-nez v1, :cond_2

    new-instance v1, Landroid/icu/util/VersionInfo;

    invoke-direct {v1, v3}, Landroid/icu/util/VersionInfo;-><init>(I)V

    sget-object v4, Landroid/icu/util/VersionInfo;->MAP_:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/VersionInfo;

    if-eqz v2, :cond_2

    move-object v1, v2

    :cond_2
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    filled-new-array {v8, v8, v8, v8}, [I

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v9, :cond_3

    if-ge v4, v5, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x2e

    if-ne v1, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v1, -0x30

    int-to-char v1, v6

    if-ltz v1, :cond_1

    const/16 v6, 0x9

    if-le v1, v6, :cond_2

    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Invalid version number: Version number may be negative or greater than 255"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    aget v6, v0, v2

    mul-int/lit8 v6, v6, 0xa

    aput v6, v0, v2

    aget v6, v0, v2

    add-int/2addr v6, v1

    aput v6, v0, v2

    goto :goto_1

    :cond_3
    if-eq v4, v5, :cond_4

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid version number: String \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' exceeds version format"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v9, :cond_7

    aget v6, v0, v3

    if-ltz v6, :cond_5

    aget v6, v0, v3

    const/16 v7, 0xff

    if-le v6, v7, :cond_6

    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Invalid version number: Version number may be negative or greater than 255"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    aget v6, v0, v8

    const/4 v7, 0x1

    aget v7, v0, v7

    const/4 v8, 0x2

    aget v8, v0, v8

    const/4 v9, 0x3

    aget v9, v0, v9

    invoke-static {v6, v7, v8, v9}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v6

    return-object v6
.end method

.method private static getInt(IIII)I
    .locals 2

    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method static getTZDataVersion()Ljava/lang/String;
    .locals 4

    sget-object v1, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    if-nez v1, :cond_1

    const-class v2, Landroid/icu/util/VersionInfo;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "android/icu/impl/data/icudt56b"

    const-string/jumbo v3, "zoneinfo64"

    invoke-static {v1, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string/jumbo v1, "TZVersion"

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    :cond_1
    sget-object v1, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static javaVersion()Landroid/icu/util/VersionInfo;
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v12, 0x2e

    sget-object v10, Landroid/icu/util/VersionInfo;->javaVersion:Landroid/icu/util/VersionInfo;

    if-nez v10, :cond_5

    const-class v11, Landroid/icu/util/VersionInfo;

    monitor-enter v11

    :try_start_0
    sget-object v10, Landroid/icu/util/VersionInfo;->javaVersion:Landroid/icu/util/VersionInfo;

    if-nez v10, :cond_4

    const-string/jumbo v10, "java.version"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v9, v8

    move v5, v4

    :goto_0
    array-length v10, v1

    if-ge v5, v10, :cond_7

    add-int/lit8 v4, v5, 0x1

    aget-char v0, v1, v5

    const/16 v10, 0x30

    if-lt v0, v10, :cond_0

    const/16 v10, 0x39

    if-le v0, v10, :cond_2

    :cond_0
    if-eqz v3, :cond_6

    const/4 v10, 0x3

    if-ne v2, v10, :cond_1

    move v8, v9

    :goto_1
    if-lez v8, :cond_3

    add-int/lit8 v10, v8, -0x1

    aget-char v10, v1, v10

    if-ne v10, v12, :cond_3

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    add-int/lit8 v8, v9, 0x1

    const/16 v10, 0x2e

    aput-char v10, v1, v9

    add-int/lit8 v2, v2, 0x1

    :goto_2
    move v9, v8

    move v5, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    add-int/lit8 v8, v9, 0x1

    aput-char v0, v1, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v7, v1, v10, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    move-result-object v10

    sput-object v10, Landroid/icu/util/VersionInfo;->javaVersion:Landroid/icu/util/VersionInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v11

    :cond_5
    sget-object v10, Landroid/icu/util/VersionInfo;->javaVersion:Landroid/icu/util/VersionInfo;

    return-object v10

    :cond_6
    move v8, v9

    goto :goto_2

    :cond_7
    move v8, v9

    move v4, v5

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    sget-object v3, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v3}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v3

    if-gt v3, v7, :cond_2

    sget-object v3, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v3}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    sget-object v3, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v3}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v1

    sget-object v3, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v3}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v1, v1, 0x1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v4}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "International Components for Unicode for Java "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Implementation Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v5, v6, v7}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unicode Data Version:   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/icu/util/VersionInfo;->UNICODE_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v5, v6, v7}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CLDR Data Version:      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/icu/util/LocaleData;->getCLDRVersion()Landroid/icu/util/VersionInfo;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Time Zone Data Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/icu/util/VersionInfo;->getTZDataVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v3, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v3, v6, v6}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    sget-object v3, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v3}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v4}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v4}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    sget-object v3, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v3, v6, v6}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/icu/util/VersionInfo;)I
    .locals 2

    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    iget v1, p1, Landroid/icu/util/VersionInfo;->m_version_:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/util/VersionInfo;

    invoke-virtual {p0, p1}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMajor()I
    .locals 1

    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMicro()I
    .locals 1

    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMilli()I
    .locals 1

    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMinor()I
    .locals 1

    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getVersionString(II)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt p1, v5, :cond_0

    if-ge p2, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Invalid min/maxDigits range"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-gt p1, v4, :cond_0

    if-gt p2, v4, :cond_0

    if-gt p1, p2, :cond_0

    new-array v0, v4, [I

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v4

    aput v4, v0, v6

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v4

    aput v4, v0, v5

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v4

    const/4 v5, 0x2

    aput v4, v0, v5

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMicro()I

    move-result v4

    const/4 v5, 0x3

    aput v4, v0, v5

    move v2, p2

    :goto_0
    if-le v2, p1, :cond_2

    add-int/lit8 v4, v2, -0x1

    aget v4, v0, v4

    if-eqz v4, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    aget v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v2, :cond_4

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2e

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMicro()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
