.class Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;
.super Ljava/lang/Object;
.source "WatermarkTextLoader.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->getLocationInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 14

    const-string v10, "WatermarkTextLoader"

    const-string v11, "onResponse"

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v10, "WatermarkTextLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "key ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "LocalizedName"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-static {v10, v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$702(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;Ljava/lang/String;)Ljava/lang/String;

    const-string v10, "WatermarkTextLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDist "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-static {v12}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$700(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    const-string v10, "SupplementalAdminAreas"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :try_start_1
    const-string v10, "SupplementalAdminAreas"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-eqz v10, :cond_2

    new-instance v8, Lorg/json/JSONObject;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "LocalizedName"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$802(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;Ljava/lang/String;)Ljava/lang/String;

    const-string v10, "WatermarkTextLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mCity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-static {v12}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$800(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v9

    const-string v10, "Country"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :try_start_3
    const-string v10, "LocalizedName"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-static {v10, v5}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$902(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;Ljava/lang/String;)Ljava/lang/String;

    const-string v10, "WatermarkTextLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mCountry "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-static {v12}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$900(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_3
    const-string v10, "AdministrativeArea"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    :try_start_4
    iget-object v10, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    const-string v11, "LocalizedName"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$1002(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;Ljava/lang/String;)Ljava/lang/String;

    const-string v10, "WatermarkTextLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mProvince "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-static {v12}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$1000(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-static {v10}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$1000(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-static {v10}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$1000(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-static {v10}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$1000(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-static {v11}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$1000(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    iget-object v12, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-static {v12}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$1000(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v10, "\u5e02"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    iget-object v11, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-static {v11}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$1000(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-static {v13}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$1000(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$802(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;Ljava/lang/String;)Ljava/lang/String;

    const-string v10, "WatermarkTextLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mCity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-static {v12}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->access$800(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v10, "WatermarkTextLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getLocationInfo onResponse : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v10, "WatermarkTextLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getLocationInfo onResponse : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_2
    move-exception v2

    const-string v10, "WatermarkTextLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getLocationInfo onResponse : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_3
    move-exception v2

    const-string v10, "WatermarkTextLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getLocationInfo onResponse : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_4
    move-exception v2

    const-string v10, "WatermarkTextLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getLocationInfo onResponse : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4
    return-void
.end method
