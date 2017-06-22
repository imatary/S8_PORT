.class public Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;
.super Ljava/lang/Object;
.source "PlatformChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossAppUtils"

.field public static isSemSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemSupported:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isSemAvailable(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.samsung.feature.samsung_experience_mobile"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "CrossAppUtils"

    const-string v3, "isSemAvailable = true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemSupported:Z

    :goto_0
    return v1

    :cond_0
    const-string v1, "CrossAppUtils"

    const-string v3, "isSemAvailable = false"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemSupported:Z

    move v1, v2

    goto :goto_0
.end method
