.class public Lcom/samsung/android/spen/libse/SeHermesServiceManager;
.super Ljava/lang/Object;
.source "SeHermesServiceManager.java"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/HermesServiceManagerInterface;


# instance fields
.field private mInfoExtractionManager:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/spen/libse/SeHermesServiceManager;->mInfoExtractionManager:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libse/SeHermesServiceManager;->isPenFeatureModel(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/spen/libse/SeHermesServiceManager;->mInfoExtractionManager:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method private isPenFeatureModel(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissHermes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeHermesServiceManager;->mInfoExtractionManager:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public showHermes(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeHermesServiceManager;->mInfoExtractionManager:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method
