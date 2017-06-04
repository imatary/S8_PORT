.class public Lcom/sec/samsung/gallery/util/EnvironmentTagUtils;
.super Ljava/lang/Object;
.source "EnvironmentTagUtils.java"


# static fields
.field private static final KEY_ALTITUDE:Ljava/lang/String; = "Altitude"

.field private static final KEY_LOCALIZED_NAME:Ljava/lang/String; = "LocalizedName"

.field private static final KEY_RELATIVE_HUMIDITY:Ljava/lang/String; = "RelativeHumidity"

.field private static final KEY_TEMPERATURE:Ljava/lang/String; = "Temperature"

.field private static final KEY_UNIT:Ljava/lang/String; = "Unit"

.field private static final KEY_WEATHER:Ljava/lang/String; = "WeatherIcon"

.field private static final TAG:Ljava/lang/String; = "EnvironmentTagUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTagShotInfoFromSEFData(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "Tag_Shot_Info"

    invoke-static {v3, v7}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->getData(Ljava/io/File;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v7, v2

    if-nez v7, :cond_1

    :cond_0
    const-string/jumbo v7, "EnvironmentTagUtils"

    const-string/jumbo v8, "sefData is invalid"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    :goto_0
    return-object v5

    :catch_0
    move-exception v0

    const-string/jumbo v7, "EnvironmentTagUtils"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x0

    array-length v8, v2

    invoke-direct {v4, v2, v7, v8}, Ljava/lang/String;-><init>([BII)V

    const-string/jumbo v7, "EnvironmentTagUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sef data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v7, "LocalizedName"

    const-string/jumbo v8, "LocalizedName"

    invoke-virtual {v1, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTagShotAltitudeInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "Altitude"

    const-string/jumbo v8, "Altitude"

    invoke-virtual {v1, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo v7, "Unit"

    const-string/jumbo v8, "Unit"

    invoke-virtual {v1, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "Temperature"

    const-string/jumbo v8, "Temperature"

    invoke-virtual {v1, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "RelativeHumidity"

    const-string/jumbo v8, "RelativeHumidity"

    invoke-virtual {v1, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "WeatherIcon"

    const-string/jumbo v8, "WeatherIcon"

    invoke-virtual {v1, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v7, "EnvironmentTagUtils"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    goto/16 :goto_0
.end method
