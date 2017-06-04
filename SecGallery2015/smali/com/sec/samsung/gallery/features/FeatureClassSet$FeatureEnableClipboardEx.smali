.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureEnableClipboardEx;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureEnableClipboardEx"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method

.method private isSemAvailable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureEnableClipboardEx;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.feature.samsung_exmperience_mobile"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method isEnabled(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "android.sec.clipboard.ClipboardExManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureEnableClipboardEx;->isSemAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "com.samsung.android.content.clipboard.SemClipboardManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    const-string/jumbo v4, "isEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method
