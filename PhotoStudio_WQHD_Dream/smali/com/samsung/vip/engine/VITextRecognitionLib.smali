.class public abstract Lcom/samsung/vip/engine/VITextRecognitionLib;
.super Ljava/lang/Object;
.source "VITextRecognitionLib.java"


# static fields
.field private static final ENABLE_LANG_SET:[Ljava/lang/String;

.field private static final ENABLE_LANG_SET_ID:[I

.field private static final FILECHECKER:[B

.field public static final LIBNAME:Ljava/lang/String; = "VIText"

.field private static final TAG:Ljava/lang/String; = "VITextRecognitionLib"

.field public static final VERSION:Ljava/lang/String; = "0.8.4"

.field public static final VIHW_ENGINE_RAM_SIZE:I = 0xa800

.field public static final VIHW_LANG_CHINESE:I = 0x0

.field public static final VIHW_LANG_CHINESE_CURSIVE_ENG:I = 0x1a

.field public static final VIHW_LANG_CHINESE_ENGLISH:I = 0x18

.field public static final VIHW_LANG_CHINESE_HK:I = 0x1c

.field public static final VIHW_LANG_CHINESE_HK_OVERLAY:I = 0x20

.field public static final VIHW_LANG_CHINESE_S_OVERLAY:I = 0x1e

.field public static final VIHW_LANG_CHINESE_T:I = 0x1b

.field public static final VIHW_LANG_CHINESE_TW:I = 0x1d

.field public static final VIHW_LANG_CHINESE_TW_OVERLAY:I = 0x21

.field public static final VIHW_LANG_CHINESE_T_OVERLAY:I = 0x1f

.field public static final VIHW_LANG_CURSIVE_ENGLISH:I = 0xa

.field public static final VIHW_LANG_CURSIVE_ENG_FRE:I = 0x11

.field public static final VIHW_LANG_CURSIVE_ENG_GER:I = 0x12

.field public static final VIHW_LANG_CURSIVE_ENG_ITA:I = 0x13

.field public static final VIHW_LANG_CURSIVE_ENG_POR:I = 0x14

.field public static final VIHW_LANG_CURSIVE_ENG_RUS:I = 0x16

.field public static final VIHW_LANG_CURSIVE_ENG_SPA:I = 0x15

.field public static final VIHW_LANG_CURSIVE_FRENCH:I = 0xb

.field public static final VIHW_LANG_CURSIVE_GERMAN:I = 0xc

.field public static final VIHW_LANG_CURSIVE_ITALIAN:I = 0xd

.field public static final VIHW_LANG_CURSIVE_PORTUGUESE:I = 0xe

.field public static final VIHW_LANG_CURSIVE_RUSSIAN:I = 0x10

.field public static final VIHW_LANG_CURSIVE_SPANISH:I = 0xf

.field public static final VIHW_LANG_ENGLISH:I = 0x3

.field public static final VIHW_LANG_FRENCH:I = 0x4

.field public static final VIHW_LANG_GERMAN:I = 0x5

.field public static final VIHW_LANG_ITALIAN:I = 0x6

.field public static final VIHW_LANG_JAPANESE:I = 0x2

.field public static final VIHW_LANG_KOREAN:I = 0x1

.field public static final VIHW_LANG_KOREAN_CURSIVE_ENG:I = 0x19

.field public static final VIHW_LANG_KOREAN_ENGLISH:I = 0x17

.field public static final VIHW_LANG_NUMERIC:I = 0x22

.field public static final VIHW_LANG_PORTUGUESE:I = 0x7

.field public static final VIHW_LANG_RUSSIAN:I = 0x9

.field public static final VIHW_LANG_SPANISH:I = 0x8

.field public static final VIHW_LANG_WHAT:I = 0x64

.field public static final VIHW_MAX_CANDIDATE_NUM:I = 0x12

.field public static final VIHW_MAX_POINT_DATA_NUM:I = 0x1f40

.field public static final VIHW_MAX_POINT_NUM:I = 0xfa0

.field public static final VIHW_MAX_RECT_HEIGHT:I = 0x320

.field public static final VIHW_MAX_RECT_WIDTH:I = 0x320

.field public static final VIHW_MAX_STRING_LEN:I = 0x16d

.field public static final VIHW_RECOG_TYPE_CHAR:I = 0x0

.field public static final VIHW_RECOG_TYPE_MULTI_LINE:I = 0x3

.field public static final VIHW_RECOG_TYPE_SINGLE_LINE:I = 0x2

.field public static final VIHW_RECOG_TYPE_STRING:I = 0x1


# instance fields
.field private mDBVersion:J

.field private mData:[[B

.field protected mLangMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mXstrokeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[F>;"
        }
    .end annotation
.end field

.field private mYstrokeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[F>;"
        }
    .end annotation
.end field

.field private mbAddStrokeDirectly:Z

.field private mbInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/vip/engine/VITextRecognitionLib;->FILECHECKER:[B

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "en_US"

    aput-object v1, v0, v5

    const-string v1, "ko_KR"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "zh_CN"

    aput-object v2, v0, v1

    const-string v1, "eng"

    aput-object v1, v0, v4

    const-string v1, "kor"

    aput-object v1, v0, v6

    const-string v1, "chn"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "de_DE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/vip/engine/VITextRecognitionLib;->ENABLE_LANG_SET:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [I

    aput v4, v0, v5

    aput v3, v0, v3

    aput v4, v0, v4

    aput v3, v0, v6

    const/4 v1, 0x6

    aput v7, v0, v1

    sput-object v0, Lcom/samsung/vip/engine/VITextRecognitionLib;->ENABLE_LANG_SET_ID:[I

    return-void

    :array_0
    .array-data 1
        0x53t
        0x41t
        0x4dt
        0x53t
        0x55t
        0x4et
        0x47t
        0x5ft
        0x4dt
        0x48t
        0x57t
        0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mLangMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbAddStrokeDirectly:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mDBVersion:J

    iput-object v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    iput-object v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mLangMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/vip/engine/VITextRecognitionLib;->ENABLE_LANG_SET:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iput-object v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mLangMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/vip/engine/VITextRecognitionLib;->ENABLE_LANG_SET:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/samsung/vip/engine/VITextRecognitionLib;->ENABLE_LANG_SET_ID:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized addStroke([F[FZ)V
    .locals 1

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_AddStroke([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDBVersion(Ljava/io/File;I)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/16 v12, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-wide v8

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-array v0, v12, [B

    add-int/lit8 v10, p2, -0x8

    int-to-long v10, v10

    invoke-virtual {v3, v10, v11}, Ljava/io/FileInputStream;->skip(J)J

    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v12, :cond_2

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Date;

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    invoke-direct {v1, v10, v11}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy/MM/dd"

    invoke-direct {v4, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "VITextRecognitionLib"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[initialize java file] DB Version : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    aget-byte v10, v0, v5

    and-int/lit16 v6, v10, 0xff

    mul-int/lit8 v10, v5, 0x8

    shl-int v10, v6, v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private getDBVersion(Ljava/lang/String;)J
    .locals 8

    invoke-virtual {p0, p1}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_GetDBVersion(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v0, Ljava/util/Date;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v4

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VITextRecognitionLib"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[initialize JNI] DB Version : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method

.method private getDBVersion([B)J
    .locals 11

    if-nez p1, :cond_0

    const-wide/16 v6, 0x0

    :goto_0
    return-wide v6

    :cond_0
    array-length v5, p1

    const-wide/16 v6, 0x0

    add-int/lit8 v2, v5, -0x8

    :goto_1
    if-lt v2, v5, :cond_1

    new-instance v0, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy/MM/dd"

    invoke-direct {v1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "VITextRecognitionLib"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[initialize java asset] DB Version : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    aget-byte v8, p1, v2

    and-int/lit16 v3, v8, 0xff

    mul-int/lit8 v8, v2, 0x8

    shl-int v8, v3, v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getFileSize(Ljava/io/InputStream;)I
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const-string v2, "VITextRecognitionLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadDB : file size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getInputStream(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v2, p2

    const-string v4, "ko_KR-hj"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "ko_KR"

    :cond_0
    const-string v4, "VITextRecognitionLib"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Trying to open: vidata/hwr_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "vidata/hwr_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "VITextRecognitionLib"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to open: vidata/hwr_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object v3, v1

    goto :goto_0
.end method

.method private getStandardLang(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "eng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "en_US"

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v0, "kor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ko_KR"

    goto :goto_0

    :cond_2
    const-string v0, "chn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "zh_CN"

    goto :goto_0
.end method

.method private isValidDB(Ljava/io/File;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0xc

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-array v0, v8, [B

    add-int/lit8 v5, p2, -0x14

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v8, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    aget-byte v5, v0, v3

    sget-object v6, Lcom/samsung/vip/engine/VITextRecognitionLib;->FILECHECKER:[B

    aget-byte v6, v6, v3

    if-ne v5, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private isValidDB(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_IsValidDB(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isValidDB([B)Z
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0xc

    if-lt v0, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v1, -0x14

    add-int/2addr v3, v0

    aget-byte v3, p1, v3

    sget-object v4, Lcom/samsung/vip/engine/VITextRecognitionLib;->FILECHECKER:[B

    aget-byte v4, v4, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private loadDB(Landroid/content/res/AssetManager;Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getInputStream(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getFileSize(Ljava/io/InputStream;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    new-array v4, v0, [B

    aput-object v4, v3, p3

    iget-object v3, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    aget-object v3, v3, p3

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ge v3, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    const/4 v4, 0x0

    aput-object v4, v3, p3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    aget-object v3, v3, p3

    invoke-direct {p0, v3}, Lcom/samsung/vip/engine/VITextRecognitionLib;->isValidDB([B)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p3, :cond_3

    iget-object v2, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    aget-object v2, v2, p3

    invoke-direct {p0, v2}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getDBVersion([B)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mDBVersion:J

    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private declared-synchronized recog(Z)[Ljava/lang/String;
    .locals 13

    const/4 v8, 0x0

    monitor-enter p0

    if-eqz p1, :cond_1

    const/4 v10, 0x3

    :try_start_0
    invoke-virtual {p0, v10}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_Recog(I)I

    move-result v9

    :goto_0
    if-eqz v9, :cond_5

    const-string v10, "VITextRecognitionLib"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error Code: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-object v8

    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v0, 0x0

    :goto_2
    if-lt v0, v5, :cond_2

    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    mul-int/lit8 v10, v6, 0x2

    new-array v7, v10, [I

    const/4 v0, 0x0

    move v3, v2

    :goto_3
    if-lt v0, v5, :cond_3

    add-int/lit8 v2, v3, 0x1

    const v10, 0xffff

    aput v10, v7, v3

    add-int/lit8 v3, v2, 0x1

    const v10, 0xffff

    aput v10, v7, v2

    iget-object v10, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->clear()V

    iget-object v10, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->clear()V

    const/4 v10, 0x3

    invoke-virtual {p0, v10, v7, v6}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_Recog(I[II)I

    move-result v9

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v6, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v10, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    array-length v4, v10

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v4, :cond_4

    add-int/lit8 v2, v3, 0x1

    const v10, 0xffff

    aput v10, v7, v3

    add-int/lit8 v3, v2, 0x1

    const/4 v10, 0x0

    aput v10, v7, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v3, 0x1

    iget-object v10, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v1

    float-to-int v10, v10

    aput v10, v7, v3

    add-int/lit8 v3, v2, 0x1

    iget-object v10, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v1

    float-to-int v10, v10

    aput v10, v7, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-boolean v10, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_GetResultList()[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v10, "VITextRecognitionLib"

    const-string v11, "GetResultList() return null!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method


# virtual methods
.method protected abstract VIText_AddStroke([F[F)V
.end method

.method protected abstract VIText_ClearStrokes()V
.end method

.method protected abstract VIText_Close()V
.end method

.method protected abstract VIText_GenerateAndSave(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract VIText_GetCharResultInfo()Lcom/samsung/vip/engine/VICharResultInfo;
.end method

.method protected abstract VIText_GetDBVersion(Ljava/lang/String;)J
.end method

.method protected abstract VIText_GetResult()Ljava/lang/String;
.end method

.method protected abstract VIText_GetResultList()[Ljava/lang/String;
.end method

.method protected abstract VIText_GetScoreList()[F
.end method

.method protected abstract VIText_GetWordInfo(I)Lcom/samsung/vip/engine/VIWordInfo;
.end method

.method protected abstract VIText_Init(Ljava/lang/String;IIIS)I
.end method

.method protected abstract VIText_Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract VIText_Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract VIText_Init([B[BLjava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract VIText_IsValidDB(Ljava/lang/String;)Z
.end method

.method protected abstract VIText_Recog(I)I
.end method

.method protected abstract VIText_Recog(I[II)I
.end method

.method protected abstract VIText_SetUserDictMode(Ljava/lang/String;)I
.end method

.method public declared-synchronized addStroke([F[F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbAddStrokeDirectly:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/vip/engine/VITextRecognitionLib;->addStroke([F[FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearStrokes()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbAddStrokeDirectly:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_ClearStrokes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 4

    const/4 v3, 0x2

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    invoke-virtual {p0}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_Close()V

    iget-object v1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    array-length v1, v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public generateUserDictDataFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_GenerateAndSave(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCharInfo()Lcom/samsung/vip/engine/VICharResultInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_GetCharResultInfo()Lcom/samsung/vip/engine/VICharResultInfo;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCurrentDBVersion()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mDBVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLangList()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mLangMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mLangMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mLangMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mLangMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLanguageMode(Ljava/lang/String;)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getStandardLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mLangMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mLangMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method protected getRecogResultCandidate(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v7, 0xffff

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v4, :cond_1

    if-nez v3, :cond_3

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-array v0, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_4

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getResultScoreList()[F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_GetScoreList()[F

    move-result-object v0

    return-object v0
.end method

.method public getWordInfo(I)Lcom/samsung/vip/engine/VIWordInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_GetWordInfo(I)Lcom/samsung/vip/engine/VIWordInfo;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [[B

    iput-object v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    iget-object v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    aput-object v5, v4, v7

    iget-object v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    aput-object v5, v4, v3

    invoke-direct {p0, p2}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getStandardLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, v2, v4}, Lcom/samsung/vip/engine/VITextRecognitionLib;->loadDB(Landroid/content/res/AssetManager;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    :cond_0
    const-string v4, "ko_KR"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ko_KR-hj"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ja_JP"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "zh_CN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "zh_HK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "zh_TW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const-string v4, "en_US"

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/samsung/vip/engine/VITextRecognitionLib;->loadDB(Landroid/content/res/AssetManager;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    aget-object v5, v5, v3

    invoke-virtual {p0, v4, v5, v2, p3}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_Init([B[BLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    iput-boolean v3, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    :goto_1
    move v3, v1

    :goto_2
    return v3

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_4
    iput-boolean v7, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    goto :goto_1
.end method

.method public init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [[B

    iput-object v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    iget-object v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    aput-object v5, v4, v6

    iget-object v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    aput-object v5, v4, v3

    invoke-direct {p0, p3}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getStandardLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/samsung/vip/engine/VITextRecognitionLib;->loadDB(Ljava/io/File;I)Z

    const/4 v4, 0x1

    invoke-virtual {p0, p2, v4}, Lcom/samsung/vip/engine/VITextRecognitionLib;->loadDB(Ljava/io/File;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    aget-object v4, v4, v6

    iget-object v5, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    aget-object v5, v5, v3

    invoke-virtual {p0, v4, v5, v2, p4}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_Init([B[BLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    :goto_0
    move v3, v1

    :goto_1
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_0
    iput-boolean v6, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    goto :goto_0
.end method

.method public init(Ljava/lang/String;IS)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/vip/engine/VITextRecognitionLib;->isValidDB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v7, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    :cond_0
    const/16 v3, 0x640

    const/16 v4, 0x4b0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_Init(Ljava/lang/String;IIIS)I

    move-result v6

    invoke-direct {p0, p1}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getDBVersion(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mDBVersion:J

    if-nez v6, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    :goto_0
    return v6

    :cond_1
    iput-boolean v7, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getStandardLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/vip/engine/VITextRecognitionLib;->isValidDB(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    :cond_0
    invoke-virtual {p0, p1, v1, p3}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getDBVersion(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mDBVersion:J

    if-nez v0, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    :goto_0
    return v0

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p3}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getStandardLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/vip/engine/VITextRecognitionLib;->isValidDB(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    :cond_0
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getDBVersion(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mDBVersion:J

    if-nez v0, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    :goto_0
    return v0

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    goto :goto_0
.end method

.method public init([B[BLjava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0, p3}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getStandardLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_Init([B[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbInitialized:Z

    goto :goto_0
.end method

.method public isSupportedLanguage(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mLangMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getStandardLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mLangMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public loadDB(Ljava/io/File;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getFileSize(Ljava/io/InputStream;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/samsung/vip/engine/VITextRecognitionLib;->isValidDB(Ljava/io/File;I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/samsung/vip/engine/VITextRecognitionLib;->getDBVersion(Ljava/io/File;I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mDBVersion:J

    :cond_2
    iget-object v3, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    new-array v4, v0, [B

    aput-object v4, v3, p2

    iget-object v3, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    aget-object v3, v3, p2

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-ge v3, v0, :cond_3

    iget-object v3, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mData:[[B

    const/4 v4, 0x0

    aput-object v4, v3, p2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public loadLibrary(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VITextRecognitionLib"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnsatisfiedLinkError! so path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized recog()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbAddStrokeDirectly:Z

    invoke-direct {p0, v0}, Lcom/samsung/vip/engine/VITextRecognitionLib;->recog(Z)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recog([II)[Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_Recog(I[II)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "VITextRecognitionLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error Code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_GetResultList()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "VITextRecognitionLib"

    const-string v3, "GetResultList() return null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setAddStrokeDirectly(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/vip/engine/VITextRecognitionLib;->mbAddStrokeDirectly:Z

    return-void
.end method

.method public setUserDictMode(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/vip/engine/VITextRecognitionLib;->VIText_SetUserDictMode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
