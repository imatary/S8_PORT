.class Landroid/support/v4/content/ContextCompatFroyo;
.super Ljava/lang/Object;
.source "ContextCompatFroyo.java"


# direct methods
.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
