.class public Lcom/sec/samsung/gallery/util/QvBurstImageUtils;
.super Ljava/lang/Object;
.source "QvBurstImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUniqueFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v5, 0x0

    :cond_1
    return-object v5

    :cond_2
    const-string/jumbo v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "%s.%s"

    new-array v7, v11, [Ljava/lang/Object;

    aget-object v8, v3, v9

    aput-object v8, v7, v9

    aget-object v8, v3, v10

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "%s_%02d.%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aget-object v8, v3, v9

    aput-object v8, v7, v9

    add-int/lit8 v2, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aget-object v8, v3, v10

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method
