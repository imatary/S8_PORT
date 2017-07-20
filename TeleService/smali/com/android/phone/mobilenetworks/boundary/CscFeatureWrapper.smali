.class Lcom/android/phone/mobilenetworks/boundary/CscFeatureWrapper;
.super Ljava/lang/Object;
.source "MobileNetworkFeature.java"


# instance fields
.field mCscFeature:Lcom/samsung/android/feature/SemCscFeature;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/boundary/CscFeatureWrapper;->mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    return-void
.end method


# virtual methods
.method getBoolean(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/boundary/CscFeatureWrapper;->mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    invoke-virtual {v1, p1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/boundary/CscFeatureWrapper;->mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    invoke-virtual {v1, p1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
