.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsBroadcastReceiver"
.end annotation


# instance fields
.field private final ID_PROJECTION:[Ljava/lang/String;

.field private final UPDATE_STATUS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 3

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->ID_PROJECTION:[Ljava/lang/String;

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "/status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->UPDATE_STATUS_URI:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    return-void
.end method

.method private actionMessageSent(Landroid/content/Context;Landroid/content/Intent;Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;)V
    .locals 11

    const/4 v0, 0x0

    iget-wide v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    long-to-int v2, v2

    rem-int/lit8 v2, v2, 0xa

    const/high16 v3, 0x20000000

    invoke-static {p1, v2, p2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/app/PendingIntent;->cancel()V

    :cond_0
    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap2(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap2(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object v2

    iget-wide v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    if-eqz v9, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    :cond_1
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get0()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "actionMessageSent(): msgInfo.failedSent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->failedSent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->sendInProgress:Z

    iget-boolean v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->failedSent:Z

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v3, "actionMessageSent: result OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->transparent:I

    if-nez v2, :cond_6

    iget-object v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to move "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to SENT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string/jumbo v3, "SendingSuccess"

    iget-wide v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap1(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get10(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap7(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :goto_1
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap2(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap2(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object v2

    iget-wide v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get9(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->retry:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    iput-boolean v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    const/4 v2, 0x0

    iput v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    const/4 v2, 0x0

    iput-boolean v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->failedSent:Z

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string/jumbo v3, "SendingFailure"

    iget-wide v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    const/4 v6, 0x4

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap1(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get10(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap7(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_1

    :cond_8
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->transparent:I

    if-nez v2, :cond_a

    iget-object v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to move "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to FAILED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string/jumbo v3, "SendingFailure"

    iget-wide v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap1(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get10(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap7(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v6, "HANDLE"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get8(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get2()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive: action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->ACTION_RECEIVE_EMAIL_SEND_RESULT:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string/jumbo v7, "msg-id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-set0(Lcom/android/bluetooth/map/BluetoothMapContentObserver;J)J

    const-string/jumbo v6, "sent-result"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string/jumbo v7, "SendingSuccess"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get4(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)J

    move-result-wide v8

    const-string/jumbo v10, "telecom/msg/sent"

    sget-object v12, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v6, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap7(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-set1(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Z)Z

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get0()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "noti Received handle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get4(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    new-instance v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string/jumbo v7, "SendingFailure"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get4(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)J

    move-result-wide v8

    const-string/jumbo v10, "telecom/msg/outbox"

    sget-object v12, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->ACTION_RECEIVE_EMAIL_INSERT_TO_DB_RESULT:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string/jumbo v7, "msg-id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-set0(Lcom/android/bluetooth/map/BluetoothMapContentObserver;J)J

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get0()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ID Received handle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get4(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    if-nez v16, :cond_7

    const-string/jumbo v6, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive: no msgInfo found for handle "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", so clear the intent"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v6, v14

    rem-int/lit8 v6, v6, 0xa

    const/high16 v7, 0x20000000

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/app/PendingIntent;->cancel()V

    :cond_6
    return-void

    :cond_7
    const-string/jumbo v6, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string/jumbo v6, "result"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    const/4 v6, -0x1

    move/from16 v0, v18

    if-eq v0, v6, :cond_8

    const/4 v6, 0x1

    move-object/from16 v0, v16

    iput-boolean v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->failedSent:Z

    :cond_8
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get0()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive: msgInfo.partsSent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", msgInfo.parts = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    if-ne v6, v7, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->actionMessageSent(Landroid/content/Context;Landroid/content/Intent;Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;)V

    :cond_a
    :goto_1
    return-void

    :cond_b
    const-string/jumbo v6, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive: Unknown action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public register()V
    .locals 5

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get6(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    const-string/jumbo v3, "message/*"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get3(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v4, "Wrong mime type!!!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "android.intent.category.APP_EMAIL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils;->ACTION_RECEIVE_EMAIL_INSERT_TO_DB_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils;->ACTION_RECEIVE_EMAIL_SEND_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get3(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
