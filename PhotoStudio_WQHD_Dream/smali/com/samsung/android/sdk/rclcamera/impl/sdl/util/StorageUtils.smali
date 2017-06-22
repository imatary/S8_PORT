.class public Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final LOW_STORAGE_THRESHOLD:J = 0xa00000L

.field public static final NO_STORAGE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.56/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/StorageUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/StorageUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableStorage()J
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    mul-long/2addr v4, v6

    const-wide/32 v6, 0xa00000

    sub-long/2addr v4, v6

    :goto_0
    return-wide v4

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v4, "cannot stat the filesystem then we don\'t know how many free bytes exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, -0x2

    goto :goto_0
.end method

.method public static getMaxSizeOfImage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;)J
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->width()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->height()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1194

    div-long/2addr v0, v2

    const-wide/16 v2, 0x96

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x50

    div-long/2addr v0, v2

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getRemainCount(Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;)J
    .locals 10

    const-wide/16 v6, -0x1

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/StorageUtils;->getAvailableStorage()J

    move-result-wide v2

    const-wide/16 v8, -0x2

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/StorageUtils;->getMaxSizeOfImage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;)J

    move-result-wide v8

    div-long v4, v2, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v4

    :catch_0
    move-exception v0

    move-wide v4, v6

    goto :goto_0

    :cond_0
    move-wide v4, v6

    goto :goto_0
.end method

.method public static getRemainTime(I)J
    .locals 10

    const-wide/16 v6, -0x1

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/StorageUtils;->getAvailableStorage()J

    move-result-wide v2

    const-wide/16 v8, -0x2

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x0

    int-to-long v8, p0

    :try_start_0
    div-long v6, v2, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v6

    int-to-long v4, v1

    :goto_0
    return-wide v4

    :catch_0
    move-exception v0

    move-wide v4, v6

    goto :goto_0

    :cond_0
    move-wide v4, v6

    goto :goto_0
.end method
