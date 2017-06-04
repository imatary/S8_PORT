.class public Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;
.super Ljava/lang/Object;
.source "DCNlgManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager$NlgData;
    }
.end annotation


# static fields
.field private static final FEATURE_USE_DEVICE_COG:Z

.field private static sNlgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager$NlgData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->FEATURE_USE_DEVICE_COG:Z

    return-void
.end method

.method private static composeNlgRequestInfo(Landroid/content/Context;I)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 11

    const/4 v7, 0x0

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->sNlgMap:Ljava/util/HashMap;

    if-nez v8, :cond_1

    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->parse(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v8

    sput-object v8, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->sNlgMap:Ljava/util/HashMap;

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->sNlgMap:Ljava/util/HashMap;

    if-nez v8, :cond_1

    :cond_0
    return-object v7

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v8, "DCNlgManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BixbyGallery : composeNlgRequestInfo : nlgId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->sNlgMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager$NlgData;

    if-eqz v2, :cond_0

    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v8, v2, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager$NlgData;->StateId:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager$NlgData;->attributeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    rem-int/lit8 v8, v0, 0x3

    if-nez v8, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v8, v2, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager$NlgData;->attributeList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v8, v2, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager$NlgData;->attributeList:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v8, v2, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager$NlgData;->attributeList:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v5, v4, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    add-int/lit8 v1, v1, 0x3

    goto :goto_0
.end method

.method public static varargs getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 7

    sget-boolean v4, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    :cond_0
    const-string/jumbo v4, "DCNlgManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BixbyGallery : getNlgRequestInfo() : nlgId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_1
    return-object v2

    :cond_2
    invoke-static {p0, p1}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->composeNlgRequestInfo(Landroid/content/Context;I)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    array-length v4, p2

    if-lez v4, :cond_1

    array-length v4, p2

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_1

    aget-object v4, p2, v0

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    aget-object v4, p2, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v4, v0, 0x1

    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    aget-object v4, p2, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static parse(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager$NlgData;",
            ">;"
        }
    .end annotation

    sget-boolean v5, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->FEATURE_USE_DEVICE_COG:Z

    if-nez v5, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "Gallery"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager$NlgData;

    invoke-direct {v5, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager$NlgData;-><init>(Landroid/content/res/XmlResourceParser;)V

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const-string/jumbo v5, "DCNlgManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NLG IDs size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
