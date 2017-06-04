.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseUnlimitedShare;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseUnlimitedShare"
.end annotation


# static fields
.field private static final WIFI_DIRECT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.allshare.service.fileshare"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method isEnabled(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "com.samsung.android.allshare.service.fileshare"

    invoke-static {p1, v4}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseUnlimitedShare;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.android.allshare.service.fileshare"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "support.feature.unlimited_share"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    :goto_1
    const-string/jumbo v4, "FeatureClassSet"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
