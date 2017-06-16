.class public Lcom/samsung/vip/engine/VIEquationRecognitionLib;
.super Ljava/lang/Object;
.source "VIEquationRecognitionLib.java"


# static fields
.field public static final LIBNAME:Ljava/lang/String; = "SPenRecognitionEquation"

.field private static final TAG:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "0.8.3"

.field private static final VI_EQ_ENGINE_RAM_SIZE:I = 0x4b000

.field private static final VI_EQ_MAX_GROUP_NUM:I = 0x80


# instance fields
.field private mData:[B

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

.field private mbInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mbInitialized:Z

    iput-object v1, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    return-void
.end method

.method private native VIEQ_Close()V
.end method

.method private native VIEQ_GetCharInfo()[Lcom/samsung/vip/engine/VIEqCharInfo;
.end method

.method private native VIEQ_Init(Ljava/lang/String;III)I
.end method

.method private native VIEQ_InitWithData([BIII)I
.end method

.method private native VIEQ_InitWithScreenInfo(Ljava/lang/String;IIII)I
.end method

.method private native VIEQ_Recog([II)Ljava/lang/String;
.end method

.method private static getFileSize(Ljava/io/InputStream;)I
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    sget-object v2, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->TAG:Ljava/lang/String;

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

.method private static getInputStream(Landroid/content/res/AssetManager;)Ljava/io/InputStream;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->TAG:Ljava/lang/String;

    const-string v4, "Trying to open: vidata/hwr_equation.dat"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v3, "vidata/hwr_equation.dat"

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v3, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->TAG:Ljava/lang/String;

    const-string v4, "Failed to open: vidata/hwr_equation.dat"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private getRecogResultCandidate(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

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

.method private loadDB(Landroid/content/res/AssetManager;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->getInputStream(Landroid/content/res/AssetManager;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {v2}, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->getFileSize(Ljava/io/InputStream;)I

    move-result v1

    sget-object v4, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file size = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    new-array v4, v1, [B

    iput-object v4, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mData:[B

    :try_start_0
    iget-object v4, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mData:[B

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ge v4, v1, :cond_2

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    throw v3

    :cond_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addStroke([F[F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
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
    iget-object v0, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mbInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mData:[B

    invoke-direct {p0}, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->VIEQ_Close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Landroid/content/res/AssetManager;)I
    .locals 6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->loadDB(Landroid/content/res/AssetManager;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mData:[B

    const v3, 0x4b000

    const/16 v4, 0x640

    const/16 v5, 0x4b0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->VIEQ_InitWithData([BIII)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mbInitialized:Z

    :goto_1
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mbInitialized:Z

    goto :goto_1
.end method

.method public init(Ljava/lang/String;)I
    .locals 4

    const v1, 0x4b000

    const/16 v2, 0x640

    const/16 v3, 0x4b0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->VIEQ_Init(Ljava/lang/String;III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mbInitialized:Z

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mbInitialized:Z

    goto :goto_0
.end method

.method public init(Ljava/lang/String;III)I
    .locals 7

    const v2, 0x4b000

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->VIEQ_InitWithScreenInfo(Ljava/lang/String;IIII)I

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mbInitialized:Z

    :goto_0
    return v6

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mbInitialized:Z

    goto :goto_0
.end method

.method public loadLibrary(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized recog()Ljava/lang/String;
    .locals 13

    const/4 v11, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v6, :cond_0

    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    mul-int/lit8 v10, v7, 0x2

    new-array v8, v10, [I

    const/4 v1, 0x0

    move v4, v3

    :goto_1
    if-lt v1, v6, :cond_1

    add-int/lit8 v3, v4, 0x1

    const v10, 0xffff

    aput v10, v8, v4

    add-int/lit8 v4, v3, 0x1

    const v10, 0xffff

    aput v10, v8, v3

    iget-object v10, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->clear()V

    iget-object v10, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0, v8, v7}, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->VIEQ_Recog([II)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    sget-object v10, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->TAG:Ljava/lang/String;

    const-string v12, "Output result is null!"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v11

    :goto_2
    monitor-exit p0

    return-object v10

    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v10, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    array-length v5, v10

    add-int/lit8 v10, v5, 0x1

    add-int/2addr v7, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v10, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    array-length v5, v10

    const/4 v2, 0x0

    :goto_3
    if-lt v2, v5, :cond_2

    add-int/lit8 v3, v4, 0x1

    const v10, 0xffff

    aput v10, v8, v4

    add-int/lit8 v4, v3, 0x1

    const/4 v10, 0x0

    aput v10, v8, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v4, 0x1

    iget-object v10, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v10, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v2

    float-to-int v10, v10

    aput v10, v8, v4

    add-int/lit8 v4, v3, 0x1

    iget-object v10, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v10, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v2

    float-to-int v10, v10

    aput v10, v8, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-boolean v10, p0, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->mbInitialized:Z

    if-nez v10, :cond_4

    move-object v10, v11

    goto :goto_2

    :cond_4
    invoke-direct {p0, v9}, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->getRecogResultCandidate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v10, v0

    if-lez v10, :cond_5

    sget-object v10, Lcom/samsung/vip/engine/VIEquationRecognitionLib;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Recognition result = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    aget-object v12, v0, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    aget-object v10, v0, v10

    goto :goto_2

    :cond_5
    const-string v10, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method
