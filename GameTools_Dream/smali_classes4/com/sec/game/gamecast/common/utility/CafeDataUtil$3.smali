.class Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;
.super Ljava/lang/Object;
.source "CafeDataUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->updateUuidFromGos(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$updateCafeId:Z


# direct methods
.method constructor <init>(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    iput-object p2, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->val$packageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->val$updateCafeId:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$000(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/GosQueryUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->getGlobalDataFromGos(Ljava/lang/String;)Lcom/sec/game/gamecast/common/model/GosGlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/game/gamecast/common/model/GosGlobalData;->getUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$100(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getGlobalDataFromGos is null , skip queryCafeId"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$100(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UUID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    new-instance v2, Lcom/sec/game/gamecast/common/model/UuidInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v0, v4, v5}, Lcom/sec/game/gamecast/common/model/UuidInfo;-><init>(Ljava/lang/String;J)V

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$202(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;Lcom/sec/game/gamecast/common/model/UuidInfo;)Lcom/sec/game/gamecast/common/model/UuidInfo;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$100(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UUIDINFO UUID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$200(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Lcom/sec/game/gamecast/common/model/UuidInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/game/gamecast/common/model/UuidInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$100(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UUIDINFO TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$200(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Lcom/sec/game/gamecast/common/model/UuidInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/game/gamecast/common/model/UuidInfo;->getLocalSyncTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$000(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$300(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$200(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Lcom/sec/game/gamecast/common/model/UuidInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setUuidInfo(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->val$updateCafeId:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;->val$packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->access$400(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
