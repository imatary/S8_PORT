.class public Lcom/samsung/android/spen/libse/SeHermesService;
.super Ljava/lang/Object;
.source "SeHermesService.java"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/HermesServiceInterface;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfoExtractionManager:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeHermesService;->mInfoExtractionManager:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeHermesService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeHermesService;->mInfoExtractionManager:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    return-void
.end method


# virtual methods
.method public dismissHermes()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public showHermes(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeHermesService;->mInfoExtractionManager:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->extract(Ljava/lang/String;)J

    const-string v1, "HVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SE-SemInfoExtractionManager.extract url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
