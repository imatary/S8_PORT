.class Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketAcceptThread"
.end annotation


# instance fields
.field private stopped:Z

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get0(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap0(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/Thread;)Z

    move-result v17

    if-nez v17, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get0(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/bluetooth/BluetoothServerSocket;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    const-string/jumbo v17, "BluetoothPbapService"

    const-string/jumbo v18, "PBAP Socket is BluetoothServerSocket"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    :try_start_0
    sget-boolean v17, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v17, :cond_2

    const-string/jumbo v17, "BluetoothPbapService"

    const-string/jumbo v18, "PBAP Accepting socket connection..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get0(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v13

    if-nez v13, :cond_4

    const-string/jumbo v17, "BluetoothPbapService"

    const-string/jumbo v18, "mServerSocket is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    sget-boolean v17, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v17, :cond_5

    const-string/jumbo v17, "BluetoothPbapService"

    const-string/jumbo v18, "Accepted socket connection..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    const-string/jumbo v18, "phone"

    invoke-virtual/range {v17 .. v18}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    const-string/jumbo v17, "gsm.sim.state"

    const-string/jumbo v18, "-1,-1"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v17, "BluetoothPbapService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "tm.getPhoneCount()"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_7

    sget-boolean v17, Lcom/android/bluetooth/pbap/BluetoothPbapService;->DEBUG:Z

    if-eqz v17, :cond_6

    const-string/jumbo v17, "BluetoothPbapService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "simStatusInt["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v15, v11

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v17, "READY"

    aget-object v18, v15, v11

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->SIM_IS_READY:Z

    :cond_7
    sget-boolean v17, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v17, :cond_8

    const-string/jumbo v17, "BluetoothPbapService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "MultiSim SIM_IS_READY boolean value : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->SIM_IS_READY:Z

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v8, :cond_d

    :try_start_1
    const-string/jumbo v17, "BluetoothPbapService"

    const-string/jumbo v19, "mConnSocket is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    sget-boolean v17, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v17, :cond_1

    const-string/jumbo v17, "BluetoothPbapService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Accept exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_a
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    const/16 v17, 0x1

    :goto_3
    sput-boolean v17, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->SIM_IS_READY:Z

    const-string/jumbo v18, "BluetoothPbapService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SIM feature enabled : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v20, "CscFeature_Contact_DisableSIMContacts"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x0

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, ", Update SIM_IS_READY : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-boolean v19, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->SIM_IS_READY:Z

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, ", value : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v6

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    sget-boolean v17, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v17, :cond_1

    const-string/jumbo v17, "BluetoothPbapService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Accept exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_3

    :cond_c
    const/16 v17, 0x1

    goto :goto_4

    :cond_d
    :try_start_4
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    :try_start_5
    monitor-exit v18

    if-nez v9, :cond_e

    const-string/jumbo v17, "BluetoothPbapService"

    const-string/jumbo v18, "getRemoteDevice() = null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v4

    :try_start_7
    const-string/jumbo v17, "BluetoothPbapService"

    const-string/jumbo v18, "Error closing the socket. ignoring..."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    :cond_e
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    const v18, 0x7f0a00d1

    invoke-virtual/range {v17 .. v18}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_f
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionManager:Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v8, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->createSession(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_12

    :try_start_8
    sget-boolean v17, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v17, :cond_10

    const-string/jumbo v17, "BluetoothPbapService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "incoming connection accepted from: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " automatically as already allowed device"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap5(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothDevice;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_5
    :try_start_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "PBSVC -- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " - perm : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " , #"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionManager:Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->getNumberOfConnections()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getAllContactsSizeInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x8

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isDualBlackList(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    const-string/jumbo v17, "BluetoothPbapService"

    const-string/jumbo v18, "Disable the dual pbap!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-set0(Lcom/android/bluetooth/pbap/BluetoothPbapService;Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;)Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionManager:Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->hasMoreAvailableSessions()Z

    move-result v17

    if-nez v17, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-set0(Lcom/android/bluetooth/pbap/BluetoothPbapService;Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;)Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    goto/16 :goto_0

    :catch_3
    move-exception v5

    const-string/jumbo v17, "BluetoothPbapService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Caught exception starting obex server session"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_12
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_14

    sget-boolean v17, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v17, :cond_13

    const-string/jumbo v17, "BluetoothPbapService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "incoming connection rejected from: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " automatically as already rejected device"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap7(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_5

    :cond_14
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v17, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v17, "com.android.settings"

    const-string/jumbo v18, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v17, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v17, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v17, "android.bluetooth.device.extra.PACKAGE_NAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v17, "android.bluetooth.device.extra.CLASS_NAME"

    const-class v18, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionManager:Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->setWaitingAuthorization(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    const-string/jumbo v18, "android.permission.BLUETOOTH_ADMIN"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-boolean v17, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v17, :cond_15

    const-string/jumbo v17, "BluetoothPbapService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "waiting for authorization for connection from: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v20, 0x7530

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_5
.end method

.method shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->interrupt()V

    return-void
.end method
