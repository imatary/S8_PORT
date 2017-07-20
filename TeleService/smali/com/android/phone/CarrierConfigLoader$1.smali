.class Lcom/android/phone/CarrierConfigLoader$1;
.super Landroid/os/Handler;
.source "CarrierConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CarrierConfigLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CarrierConfigLoader;


# direct methods
.method constructor <init>(Lcom/android/phone/CarrierConfigLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mHandler: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " phoneId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-wrap7(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get1(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v18

    aget-object v18, v18, v16

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get0(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v18

    aget-object v18, v18, v16

    if-eqz v18, :cond_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get1(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v19, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get0(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v19, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v19, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap6(Lcom/android/phone/CarrierConfigLoader;I)V

    goto :goto_0

    :pswitch_2
    const/4 v10, 0x0

    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/android/phone/CarrierConfigLoader;->-wrap10(Lcom/android/phone/CarrierConfigLoader;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/android/phone/CarrierConfigLoader;->-wrap3(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v15

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/android/phone/CarrierConfigLoader;->-wrap10(Lcom/android/phone/CarrierConfigLoader;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap5(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    const-string/jumbo v19, "com.android.carrierconfig"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12}, Lcom/android/phone/CarrierConfigLoader;->-wrap0(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Loaded config from XML. package=com.android.carrierconfig phoneId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-wrap7(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get1(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v18

    aput-object v7, v18, v16

    const/16 v18, 0x5

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CarrierConfigLoader$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    const-string/jumbo v19, "loaded_from_xml"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get3(Lcom/android/phone/CarrierConfigLoader;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    const-string/jumbo v19, "com.android.carrierconfig"

    const/16 v20, 0x3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v16

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/CarrierConfigLoader;->-wrap2(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;II)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0xa

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CarrierConfigLoader$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v20, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CarrierConfigLoader$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap6(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    :pswitch_5
    const/16 v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CarrierConfigLoader$1;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap1(Lcom/android/phone/CarrierConfigLoader;I)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v18

    aget-object v18, v18, v16

    move-object/from16 v0, v18

    if-ne v0, v8, :cond_4

    iget-object v0, v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->service:Landroid/os/IBinder;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get2(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_0

    :cond_5
    :try_start_0
    iget-object v0, v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->service:Landroid/os/IBinder;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/service/carrier/ICarrierService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierService;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/service/carrier/ICarrierService;->getCarrierConfig(Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap5(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    const-string/jumbo v19, "com.android.carrierconfig"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12, v7}, Lcom/android/phone/CarrierConfigLoader;->-wrap9(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get1(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v18

    aput-object v7, v18, v16

    const/16 v18, 0x5

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CarrierConfigLoader$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CarrierConfigLoader$1;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v18

    aget-object v18, v18, v16

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get2(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v19

    aget-object v19, v19, v16

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed to unbindService: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-wrap8(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v9

    :try_start_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed to get carrier config: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-wrap8(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v18

    aget-object v18, v18, v16

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get2(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v19

    aget-object v19, v19, v16

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v11

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed to unbindService: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-wrap8(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v19

    aget-object v19, v19, v16

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CarrierConfigLoader;->-get2(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v20

    aget-object v20, v20, v16

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_3
    throw v18

    :catch_3
    move-exception v11

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed to unbindService: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CarrierConfigLoader;->-wrap8(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get2(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v19

    aget-object v19, v19, v16

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap6(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    const-string/jumbo v19, "loaded_from_xml"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v18

    aget-object v18, v18, v16

    if-eqz v18, :cond_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap4(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Found carrier config app: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-wrap7(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CarrierConfigLoader$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CarrierConfigLoader$1;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap6(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap4(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap5(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v5, v12}, Lcom/android/phone/CarrierConfigLoader;->-wrap0(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v7

    if-eqz v7, :cond_9

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Loaded config from XML. package="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " phoneId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-wrap7(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get0(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v18

    aput-object v7, v18, v16

    const/16 v18, 0x6

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CarrierConfigLoader$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    const-string/jumbo v19, "loaded_from_xml"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/CarrierConfigLoader$1;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_9
    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-static {v0, v5, v1, v2}, Lcom/android/phone/CarrierConfigLoader;->-wrap2(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;II)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0xb

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CarrierConfigLoader$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v20, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CarrierConfigLoader$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap6(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    :pswitch_9
    const/16 v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CarrierConfigLoader$1;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap1(Lcom/android/phone/CarrierConfigLoader;I)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v18

    aget-object v18, v18, v16

    move-object/from16 v0, v18

    if-ne v0, v8, :cond_b

    iget-object v0, v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->service:Landroid/os/IBinder;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get2(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_0

    :cond_c
    :try_start_5
    iget-object v0, v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->service:Landroid/os/IBinder;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/service/carrier/ICarrierService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierService;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/service/carrier/ICarrierService;->getCarrierConfig(Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap4(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap5(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v5, v12, v7}, Lcom/android/phone/CarrierConfigLoader;->-wrap9(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get0(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v18

    aput-object v7, v18, v16

    const/16 v18, 0x6

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CarrierConfigLoader$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CarrierConfigLoader$1;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get2(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v19

    aget-object v19, v19, v16

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_0

    :catch_4
    move-exception v9

    :try_start_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed to get carrier config: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-wrap8(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get2(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v19

    aget-object v19, v19, v16

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CarrierConfigLoader;->-get2(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v20

    aget-object v20, v20, v16

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v18

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get2(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v19

    aget-object v19, v19, v16

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap6(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    const-string/jumbo v19, "loaded_from_xml"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v18

    aget-object v18, v18, v16

    if-eqz v18, :cond_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/CarrierConfigLoader;->-wrap6(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-get2(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string/jumbo v18, "build_fingerprint"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v18, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Build fingerprint changed. old: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " new: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CarrierConfigLoader;->-wrap7(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/phone/CarrierConfigLoader;->-wrap3(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;)Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string/jumbo v19, "build_fingerprint"

    sget-object v20, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_7
        :pswitch_b
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_6
        :pswitch_a
        :pswitch_c
        :pswitch_2
    .end packed-switch
.end method
