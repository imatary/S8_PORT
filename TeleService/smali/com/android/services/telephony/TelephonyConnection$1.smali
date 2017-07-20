.class Lcom/android/services/telephony/TelephonyConnection$1;
.super Landroid/os/Handler;
.source "TelephonyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelephonyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConnection;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const-string/jumbo v22, "MSG_PRECISE_CALL_STATE_CHANGED_FORCE_UPDATE"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/services/telephony/TelephonyConnection;->setForceUpdate(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/services/telephony/retrydial/ConnectionRetryDial;->setPhoneTypeChanged(Lcom/android/services/telephony/TelephonyConnection;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/Connection;

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;Z)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const-string/jumbo v22, "MSG_PRECISE_CALL_STATE_CHANGED"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const-string/jumbo v22, "MSG_HANDOVER_STATE_CHANGED"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v7, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/Connection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "SettingOriginalConnection "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " with "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/services/telephony/TelephonyConnection;->-set2(Lcom/android/services/telephony/TelephonyConnection;Z)Z

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const-string/jumbo v22, "MSG_HANDOVER_STATE_CHANGED: mOriginalConnection==null - invalid state (not cleaned up)"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const-string/jumbo v22, "MSG_RINGBACK_TONE"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/TelephonyConnection;->-wrap0(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const-string/jumbo v22, "handleMessage, original connection is not foreground connection, skipping"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string/jumbo v21, "hk_local_ringback_tone"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isMacauOperator()Z

    move-result v21

    if-eqz v21, :cond_6

    :cond_5
    const-string/jumbo v21, "dcm_play_ring_back_tone_sound"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Skipped RBT here and played in JpnCallNotifier"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const-string/jumbo v22, "HK_LOCAL_RINGBACK_TONE, play in HktwCallNotifier, skipping"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->setRingbackRequested(Z)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->onDisconnect(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const-string/jumbo v22, "Update multiparty state to %s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v13, :cond_9

    const-string/jumbo v21, "Y"

    :goto_1
    const/16 v24, 0x0

    aput-object v21, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/android/services/telephony/TelephonyConnection;->-set0(Lcom/android/services/telephony/TelephonyConnection;Z)Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnection;->-wrap4(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_8
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnection;->-wrap3(Lcom/android/services/telephony/TelephonyConnection;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v21, "N"

    goto :goto_1

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MSG_SUPP_SERVICE_NOTIFY on phoneId : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v21

    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    iget-object v0, v15, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Updating call history info in extras."

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v21, "android.telecom.extra.LAST_FORWARDED_NUMBER"

    new-instance v22, Ljava/util/ArrayList;

    iget-object v0, v15, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/services/telephony/TelephonyConnection;->putExtras(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->setVideoState(I)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/telecom/Connection$VideoProvider;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "MSG_SET_VIDEO_PROVIDER, videoProvider : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/services/telephony/TelephonyConnection;->setAudioQuality(I)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->-wrap5(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/android/services/telephony/TelephonyConnection;->updateExtras(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnectionCapabilities(I)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v12, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Landroid/util/Pair;

    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    iget-object v11, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/Connection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-ne v11, v0, :cond_0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const-string/jumbo v22, "android.telecom.event.ON_HOLD_TONE_START"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/services/telephony/TelephonyConnection;->sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const-string/jumbo v22, "android.telecom.event.ON_HOLD_TONE_END"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/services/telephony/TelephonyConnection;->sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnection;->-get1(Lcom/android/services/telephony/TelephonyConnection;)Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/services/telephony/TelephonyConnection;->-set1(Lcom/android/services/telephony/TelephonyConnection;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnection;->-get1(Lcom/android/services/telephony/TelephonyConnection;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/services/telephony/TelephonyConnection;->-set1(Lcom/android/services/telephony/TelephonyConnection;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnectionUtils;->onLineCtrlEvent(Lcom/android/services/telephony/TelephonyConnection;)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const-string/jumbo v22, "MSG_VIDEO_CALL_DOWNGRADED"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v21, "concept_usa_tmo"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    const v21, 0x7f0d0d00

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->displayLongToast(I)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v21, "concept_usa_att"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    const v21, 0x7f0d0d01

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->displayLongToast(I)V

    goto/16 :goto_0

    :cond_d
    const v21, 0x7f0d0cff

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->displayLongToast(I)V

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v21

    if-nez v21, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const-string/jumbo v22, "getPhone is null"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    const-string/jumbo v22, "MSG_VIDEO_CALL_ATTEMPTED"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string/jumbo v22, "country_detector"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/CountryDetector;

    invoke-virtual {v8}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    if-eqz v6, :cond_13

    iget-boolean v0, v6, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    iget-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    :cond_10
    :goto_2
    if-nez v18, :cond_11

    const-string/jumbo v18, "Other party"

    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0d0d02

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "%s"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/phone/PhoneDisplayMessage;->displayDialogVZWMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    iget-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0x14 -> :sswitch_10
        0x15 -> :sswitch_11
        0x64 -> :sswitch_12
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
        0x12c -> :sswitch_13
        0x12d -> :sswitch_14
    .end sparse-switch
.end method
