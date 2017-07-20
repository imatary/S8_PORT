.class Lcom/android/phone/mobilenetworks/boundary/FloatingFeatureWrapper;
.super Ljava/lang/Object;
.source "MobileNetworkFeature.java"


# instance fields
.field mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/boundary/FloatingFeatureWrapper;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    return-void
.end method


# virtual methods
.method getBoolean(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/boundary/FloatingFeatureWrapper;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-virtual {v1, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
