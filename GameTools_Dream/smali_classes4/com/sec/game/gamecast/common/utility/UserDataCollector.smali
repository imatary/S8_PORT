.class public Lcom/sec/game/gamecast/common/utility/UserDataCollector;
.super Ljava/lang/Object;
.source "UserDataCollector.java"


# static fields
.field public static final EX_BOOLEAN:Ljava/lang/String; = "boolean"

.field public static final EX_CHARTNAME:Ljava/lang/String; = "chartname"

.field public static final EX_PACKAGENAME:Ljava/lang/String; = "packagename"

.field public static final EX_RANKING:Ljava/lang/String; = "ranking"

.field public static final EX_VALUE:Ljava/lang/String; = "value"

.field public static final EX_VIDEOID:Ljava/lang/String; = "videoid"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeJsonObj(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static sendBroadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
