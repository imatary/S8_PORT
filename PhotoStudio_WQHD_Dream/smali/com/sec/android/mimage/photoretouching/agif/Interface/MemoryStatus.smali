.class public Lcom/sec/android/mimage/photoretouching/agif/Interface/MemoryStatus;
.super Ljava/lang/Object;
.source "MemoryStatus.java"


# static fields
.field static final ERROR:I = -0x1

.field public static final MIN_AVAILABLE_MEM_SIZE:I = 0xa00000

.field public static final MIN_SAVE_AVAILABLE_MEM_SIZE:I = 0xa00000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMemoryIsEnough(I)Z
    .locals 4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/Interface/MemoryStatus;->getAvailableExtMemorySize()J

    move-result-wide v0

    int-to-long v2, p0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAvailableExtMemorySize()J
    .locals 8

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/Interface/MemoryStatus;->isExtMemAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    mul-long v6, v0, v2

    :goto_0
    return-wide v6

    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static isExtMemAvailable()Z
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    return v0
.end method
