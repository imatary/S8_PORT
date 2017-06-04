.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseSamsungLinkApi;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseSamsungLinkApi"
.end annotation


# static fields
.field private static final SLINK_API_SUPPORTED_VERSION:I = 0x3e8

.field private static final SLINK_SDK_PACKAGE:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink"


# direct methods
.method constructor <init>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/Feature$FeatureType;->USE_PREFERENCE:Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/features/Feature;-><init>(Lcom/sec/samsung/gallery/features/Feature$FeatureType;)V

    return-void
.end method

.method private useSamsungLink(Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink"

    const/16 v2, 0x4000

    invoke-static {p1, v1, v2}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseSamsungLinkApi;->useSamsungLink(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FeatureClassSet"

    const-string/jumbo v2, "SLPF isn\'t supported"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
