.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureIsSupportHaptic;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureIsSupportHaptic"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/Feature$FeatureType;->USE_PREFERENCE:Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/features/Feature;-><init>(Lcom/sec/samsung/gallery/features/Feature$FeatureType;)V

    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;)Z
    .locals 7

    const/4 v4, 0x0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    const-string/jumbo v5, "vibrator"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const-class v5, Landroid/os/Vibrator;

    const-string/jumbo v6, "isEnableIntensity"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/util/Reflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/sec/android/gallery3d/util/Reflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/FloatingFeatureFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/FloatingFeatureFactory;-><init>()V

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/FloatingFeatureInterface;

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-interface {v0, v4}, Lcom/sec/samsung/gallery/lib/libinterface/FloatingFeatureInterface;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method
