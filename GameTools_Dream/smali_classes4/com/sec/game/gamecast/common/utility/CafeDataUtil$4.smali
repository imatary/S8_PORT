.class Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;
.super Ljava/lang/Object;
.source "CafeDataUtil.java"

# interfaces
.implements Lcom/sec/game/gamecast/common/utility/NetworkUtil$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->updateCafeIdFromServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    iput-object p2, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseFailed(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$500(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Lcom/sec/game/gamecast/common/utility/CafeDataListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->val$packageName:Ljava/lang/String;

    const-string/jumbo v2, "MMC_OBTAIN_FAILURE"

    invoke-interface {v0, v4, v1, v2}, Lcom/sec/game/gamecast/common/utility/CafeDataListener;->response(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$500(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Lcom/sec/game/gamecast/common/utility/CafeDataListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->val$packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RESPONSE_FAILURE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v1, v2}, Lcom/sec/game/gamecast/common/utility/CafeDataListener;->response(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResponseSucceed(Lorg/json/JSONObject;)V
    .locals 12

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v4}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$100(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v4, "cafe_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "cafe_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->val$packageName:Ljava/lang/String;

    new-instance v6, Lcom/sec/game/gamecast/common/model/CafeItemInfo;

    iget-object v7, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->val$packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v7, v0, v8, v9}, Lcom/sec/game/gamecast/common/model/CafeItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v4, v5, v6}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->updateCafeTable(Ljava/lang/String;Lcom/sec/game/gamecast/common/model/CafeItemInfo;)Z

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v4}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$500(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Lcom/sec/game/gamecast/common/utility/CafeDataListener;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->val$packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v0}, Lcom/sec/game/gamecast/common/utility/CafeDataListener;->response(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v4, "result_code"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "result_code"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "001"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->val$packageName:Ljava/lang/String;

    new-instance v6, Lcom/sec/game/gamecast/common/model/CafeItemInfo;

    iget-object v7, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->val$packageName:Ljava/lang/String;

    const-string/jumbo v8, "NO_CAFE_ID"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v6, v7, v8, v10, v11}, Lcom/sec/game/gamecast/common/model/CafeItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v4, v5, v6}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->updateCafeTable(Ljava/lang/String;Lcom/sec/game/gamecast/common/model/CafeItemInfo;)Z

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v4}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$500(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Lcom/sec/game/gamecast/common/utility/CafeDataListener;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->val$packageName:Ljava/lang/String;

    const-string/jumbo v7, "NO_CAFE_ID"

    invoke-interface {v4, v5, v6, v7}, Lcom/sec/game/gamecast/common/utility/CafeDataListener;->response(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v1, ""

    const-string/jumbo v4, "description"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "description"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v4}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$500(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Lcom/sec/game/gamecast/common/utility/CafeDataListener;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->val$packageName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/sec/game/gamecast/common/utility/CafeDataListener;->response(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v4}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$500(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Lcom/sec/game/gamecast/common/utility/CafeDataListener;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;->val$packageName:Ljava/lang/String;

    const-string/jumbo v7, "Unknown"

    invoke-interface {v4, v5, v6, v7}, Lcom/sec/game/gamecast/common/utility/CafeDataListener;->response(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
