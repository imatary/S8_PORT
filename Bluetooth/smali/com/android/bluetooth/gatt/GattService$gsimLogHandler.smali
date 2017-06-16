.class Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;
.super Landroid/os/Handler;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "gsimLogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/gatt/GattService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "CALLING_PROCESS"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/bluetooth/gatt/GattService;->-set0(Lcom/android/bluetooth/gatt/GattService;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-get3(Lcom/android/bluetooth/gatt/GattService;)Ljava/util/Calendar;

    move-result-object v13

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v7, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-get4(Lcom/android/bluetooth/gatt/GattService;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string/jumbo v14, "LE_LAST_DATE"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_0
    const-string/jumbo v13, "BtGatt.GattService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[GSIM LOG]: gsimLogHandler: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", msg: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/gatt/GattService;->-wrap9(Lcom/android/bluetooth/gatt/GattService;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/bluetooth/gatt/GattService;->-get2()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "BtGatt.GattService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[GSIM LOG]: gsimLogHandler: prevDate: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", currDate: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    const-string/jumbo v13, "BtGatt.GattService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[GSIM LOG]: reportAction2Log: no such action: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-wrap11(Lcom/android/bluetooth/gatt/GattService;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "APP_IF"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "REQ_SCAN_TYPE"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "IS_BACKGROUND"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string/jumbo v13, "BATCH_SCAN"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v12, v10}, Lcom/android/bluetooth/gatt/GattService;->-wrap24(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-ne v3, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v10}, Lcom/android/bluetooth/gatt/GattService;->-wrap15(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v10}, Lcom/android/bluetooth/gatt/GattService;->-wrap29(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v10, v14, v2}, Lcom/android/bluetooth/gatt/GattService;->-wrap28(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-static {v13, v10, v14}, Lcom/android/bluetooth/gatt/GattService;->-wrap25(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v12}, Lcom/android/bluetooth/gatt/GattService;->-wrap16(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v6}, Lcom/android/bluetooth/gatt/GattService;->-wrap14(Lcom/android/bluetooth/gatt/GattService;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    const-wide/16 v14, 0x0

    invoke-static {v13, v10, v14, v15}, Lcom/android/bluetooth/gatt/GattService;->-wrap2(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;J)Z

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    if-ne v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-static {v13, v14}, Lcom/android/bluetooth/gatt/GattService;->-wrap19(Lcom/android/bluetooth/gatt/GattService;I)V

    goto/16 :goto_1

    :cond_3
    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-get4(Lcom/android/bluetooth/gatt/GattService;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v13, "LE_LAST_DATE"

    invoke-interface {v4, v13, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v10}, Lcom/android/bluetooth/gatt/GattService;->-wrap15(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v10}, Lcom/android/bluetooth/gatt/GattService;->-wrap29(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v10, v14, v2}, Lcom/android/bluetooth/gatt/GattService;->-wrap28(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-static {v13, v10, v14}, Lcom/android/bluetooth/gatt/GattService;->-wrap25(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v12}, Lcom/android/bluetooth/gatt/GattService;->-wrap16(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v6}, Lcom/android/bluetooth/gatt/GattService;->-wrap14(Lcom/android/bluetooth/gatt/GattService;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    const-wide/16 v14, 0x0

    invoke-static {v13, v10, v14, v15}, Lcom/android/bluetooth/gatt/GattService;->-wrap2(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;J)Z

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-get4(Lcom/android/bluetooth/gatt/GattService;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v13, "LE_LAST_DATE"

    invoke-interface {v4, v13, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v10}, Lcom/android/bluetooth/gatt/GattService;->-wrap29(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v10, v14, v2}, Lcom/android/bluetooth/gatt/GattService;->-wrap28(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-static {v13, v10, v14}, Lcom/android/bluetooth/gatt/GattService;->-wrap25(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-wrap23(Lcom/android/bluetooth/gatt/GattService;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v10}, Lcom/android/bluetooth/gatt/GattService;->-wrap15(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v12}, Lcom/android/bluetooth/gatt/GattService;->-wrap16(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v6}, Lcom/android/bluetooth/gatt/GattService;->-wrap14(Lcom/android/bluetooth/gatt/GattService;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    const-wide/16 v14, 0x0

    invoke-static {v13, v10, v14, v15}, Lcom/android/bluetooth/gatt/GattService;->-wrap2(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;J)Z

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v14}, Lcom/android/bluetooth/gatt/GattService;->-wrap8(Lcom/android/bluetooth/gatt/GattService;I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-get1(Lcom/android/bluetooth/gatt/GattService;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-get1(Lcom/android/bluetooth/gatt/GattService;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_2
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-eqz v13, :cond_5

    const-string/jumbo v13, ""

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_5
    const-string/jumbo v13, "BtGatt.GattService"

    const-string/jumbo v14, "[GSIM LOG]: MESSAGE_STOP_SCAN: no scanning process to stop"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-wide/16 v8, 0x0

    const-string/jumbo v13, "BtGatt.GattService"

    const-string/jumbo v14, "MESSAGE_STOP_SCAN: processR not found prevTime is 0"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    if-ne v3, v7, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v14}, Lcom/android/bluetooth/gatt/GattService;->-wrap10(Lcom/android/bluetooth/gatt/GattService;)J

    move-result-wide v14

    sub-long/2addr v14, v8

    const-wide/16 v16, 0x3c

    div-long v14, v14, v16

    invoke-static {v13, v11, v14, v15}, Lcom/android/bluetooth/gatt/GattService;->-wrap2(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v11}, Lcom/android/bluetooth/gatt/GattService;->-wrap3(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v11, v14}, Lcom/android/bluetooth/gatt/GattService;->-wrap5(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;I)I

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-get1(Lcom/android/bluetooth/gatt/GattService;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    if-nez v7, :cond_9

    const-string/jumbo v13, "BtGatt.GattService"

    const-string/jumbo v14, "[GSIM LOG]: MESSAGE_STOP_SCAN: no scanning process to stop"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-get4(Lcom/android/bluetooth/gatt/GattService;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v13, "LE_LAST_DATE"

    invoke-interface {v4, v13, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-wrap23(Lcom/android/bluetooth/gatt/GattService;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v11}, Lcom/android/bluetooth/gatt/GattService;->-wrap3(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v11, v14}, Lcom/android/bluetooth/gatt/GattService;->-wrap5(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;I)I

    goto :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v10, v14}, Lcom/android/bluetooth/gatt/GattService;->-wrap7(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    if-ne v3, v7, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v10}, Lcom/android/bluetooth/gatt/GattService;->-wrap13(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v11}, Lcom/android/bluetooth/gatt/GattService;->-wrap26(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-static {v13, v11, v14, v15}, Lcom/android/bluetooth/gatt/GattService;->-wrap27(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    const-wide/16 v14, 0x0

    invoke-static {v13, v11, v14, v15}, Lcom/android/bluetooth/gatt/GattService;->-wrap1(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;J)Z

    goto/16 :goto_1

    :cond_a
    if-nez v7, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-get4(Lcom/android/bluetooth/gatt/GattService;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v13, "LE_LAST_DATE"

    invoke-interface {v4, v13, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v10}, Lcom/android/bluetooth/gatt/GattService;->-wrap13(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v11}, Lcom/android/bluetooth/gatt/GattService;->-wrap26(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-static {v13, v11, v14, v15}, Lcom/android/bluetooth/gatt/GattService;->-wrap27(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    const-wide/16 v14, 0x0

    invoke-static {v13, v11, v14, v15}, Lcom/android/bluetooth/gatt/GattService;->-wrap1(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;J)Z

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-get4(Lcom/android/bluetooth/gatt/GattService;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v13, "LE_LAST_DATE"

    invoke-interface {v4, v13, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v11}, Lcom/android/bluetooth/gatt/GattService;->-wrap26(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-static {v13, v11, v14, v15}, Lcom/android/bluetooth/gatt/GattService;->-wrap27(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-wrap23(Lcom/android/bluetooth/gatt/GattService;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13, v10}, Lcom/android/bluetooth/gatt/GattService;->-wrap13(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    const-wide/16 v14, 0x0

    invoke-static {v13, v11, v14, v15}, Lcom/android/bluetooth/gatt/GattService;->-wrap1(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;J)Z

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v14}, Lcom/android/bluetooth/gatt/GattService;->-wrap6(Lcom/android/bluetooth/gatt/GattService;I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-get0(Lcom/android/bluetooth/gatt/GattService;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-get0(Lcom/android/bluetooth/gatt/GattService;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_4
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-eqz v13, :cond_c

    const-string/jumbo v13, ""

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_c
    const-string/jumbo v13, "BtGatt.GattService"

    const-string/jumbo v14, "[GSIM LOG]: MESSAGE_STOP_ADV: no adv process to stop"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    const-wide/16 v8, 0x0

    const-string/jumbo v13, "BtGatt.GattService"

    const-string/jumbo v14, "MESSAGE_STOP_ADV: processR not found prevTime is 0"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_e
    if-ne v3, v7, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v14}, Lcom/android/bluetooth/gatt/GattService;->-wrap10(Lcom/android/bluetooth/gatt/GattService;)J

    move-result-wide v14

    sub-long/2addr v14, v8

    const-wide/16 v16, 0x3c

    div-long v14, v14, v16

    invoke-static {v13, v11, v14, v15}, Lcom/android/bluetooth/gatt/GattService;->-wrap1(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v11, v14}, Lcom/android/bluetooth/gatt/GattService;->-wrap4(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;I)I

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-get0(Lcom/android/bluetooth/gatt/GattService;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_f
    if-nez v7, :cond_10

    const-string/jumbo v13, "BtGatt.GattService"

    const-string/jumbo v14, "[GSIM LOG]: MESSAGE_STOP_ADV: no scanning process to stop"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-get4(Lcom/android/bluetooth/gatt/GattService;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v13, "LE_LAST_DATE"

    invoke-interface {v4, v13, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-wrap23(Lcom/android/bluetooth/gatt/GattService;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v11, v14}, Lcom/android/bluetooth/gatt/GattService;->-wrap4(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;I)I

    goto :goto_5

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v13}, Lcom/android/bluetooth/gatt/GattService;->-wrap22(Lcom/android/bluetooth/gatt/GattService;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
