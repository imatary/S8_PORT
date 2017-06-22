.class public Lcom/sec/android/mimage/photoretouching/MemoryStatus;
.super Ljava/lang/Object;
.source "MemoryStatus.java"


# static fields
.field static final ERROR:I = -0x1

.field public static final MIN_AVAILABLE_MEM_SIZE:I = 0x6e45000

.field public static final MIN_SAVE_AVAILABLE_MEM_SIZE:I = 0xa00000

.field private static final TAG:Ljava/lang/String; = "PEDIT_MemoryStatus"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLowExternalMemory(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->getAvailExtMemorySize()J

    move-result-wide v0

    const-wide/32 v2, 0x6e45000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkLowExternalMemoryForSave(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->getAvailExtMemorySize()J

    move-result-wide v0

    const-wide/32 v2, 0x6e45000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkLowSDCardMemory(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->getAvailableSDCardSize(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xa00000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAvailExtMemorySize()J
    .locals 8

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->isExtMemAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    mul-long v6, v0, v2

    :goto_0
    return-wide v6

    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getAvailableSDCardSize(Ljava/lang/String;)J
    .locals 9

    const-wide/16 v6, -0x1

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSaveSDCard(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-wide v6

    :cond_1
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    const/4 p0, 0x0

    const/4 v5, 0x0

    mul-long v6, v0, v2

    goto :goto_0
.end method

.method public static isExtMemAvailable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
