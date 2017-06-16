.class Lcom/android/bluetooth/gatt/GattDebugUtils;
.super Ljava/lang/Object;
.source "GattDebugUtils.java"


# static fields
.field private static final ACTION_GATT_PAIRING_CONFIG:Ljava/lang/String; = "android.bluetooth.action.GATT_PAIRING_CONFIG"

.field private static final ACTION_GATT_TEST_CONFIGURE_MTU:Ljava/lang/String; = "com.samsung.bluetooth.action.GATT_TEST_CONFIGURE_MTU"

.field private static final ACTION_GATT_TEST_CONNECT:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_CONNECT"

.field private static final ACTION_GATT_TEST_DISCONNECT:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_DISCONNECT"

.field private static final ACTION_GATT_TEST_DISCOVER:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_DISCOVER"

.field private static final ACTION_GATT_TEST_ENABLE:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_ENABLE"

.field private static final ACTION_GATT_TEST_EXECUTE_WRITE:Ljava/lang/String; = "com.samsung.bluetooth.action.GATT_TEST_EXECUTE_WRITE"

.field private static final ACTION_GATT_TEST_PAIR:Ljava/lang/String; = "com.samsung.bluetooth.action.GATT_TEST_PAIR"

.field private static final ACTION_GATT_TEST_READ:Ljava/lang/String; = "com.samsung.bluetooth.action.GATT_TEST_READ"

.field private static final ACTION_GATT_TEST_USAGE:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_USAGE"

.field private static final ACTION_GATT_TEST_WRITE_ATTR:Ljava/lang/String; = "com.samsung.bluetooth.action.GATT_TEST_WRITE_ATTR"

.field private static final DEBUG_ADMIN:Z = true

.field private static final EXTRA_ADDRESS:Ljava/lang/String; = "address"

.field private static final EXTRA_ADDR_TYPE:Ljava/lang/String; = "addr_type"

.field private static final EXTRA_AUTH_REQ:Ljava/lang/String; = "auth_req"

.field private static final EXTRA_EHANDLE:Ljava/lang/String; = "end"

.field private static final EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final EXTRA_EXEC:Ljava/lang/String; = "execute"

.field private static final EXTRA_HANDLE:Ljava/lang/String; = "handle"

.field private static final EXTRA_HANDLES:Ljava/lang/String; = "handles"

.field private static final EXTRA_INIT_KEY:Ljava/lang/String; = "init_key"

.field private static final EXTRA_INT_TYPE:Ljava/lang/String; = "int_type"

.field private static final EXTRA_INT_VALUE:Ljava/lang/String; = "int_value"

.field private static final EXTRA_IO_CAP:Ljava/lang/String; = "io_cap"

.field private static final EXTRA_MAX_KEY:Ljava/lang/String; = "max_key"

.field private static final EXTRA_MTU:Ljava/lang/String; = "mtu"

.field private static final EXTRA_OFFSET:Ljava/lang/String; = "offset"

.field private static final EXTRA_RESP_KEY:Ljava/lang/String; = "resp_key"

.field private static final EXTRA_SHANDLE:Ljava/lang/String; = "start"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final EXTRA_UUID:Ljava/lang/String; = "uuid"

.field private static final EXTRA_VALUE:Ljava/lang/String; = "value"

.field public static final FORMAT_SINT16:I = 0x22

.field public static final FORMAT_SINT32:I = 0x24

.field public static final FORMAT_SINT8:I = 0x21

.field public static final FORMAT_UINT16:I = 0x12

.field public static final FORMAT_UINT32:I = 0x14

.field public static final FORMAT_UINT8:I = 0x11

.field private static final TAG:Ljava/lang/String; = "BtGatt.DebugUtils"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertHandlesExtra(Landroid/content/Intent;)[S
    .locals 6

    const-string/jumbo v4, "handles"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v0, v4, [S

    const/4 v2, 0x0

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v4, v3, v2

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getBytesFromInt(III)[B
    .locals 5

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getTypeLen(I)I

    move-result v3

    add-int v0, p1, v3

    new-array v2, v0, [B

    array-length v3, v2

    if-le v0, v3, :cond_0

    return-object v4

    :cond_0
    sparse-switch p2, :sswitch_data_0

    return-object v4

    :sswitch_0
    const/16 v3, 0x8

    invoke-static {p0, v3}, Lcom/android/bluetooth/gatt/GattDebugUtils;->intToSignedBits(II)I

    move-result p0

    :sswitch_1
    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p1

    :goto_0
    return-object v2

    :sswitch_2
    const/16 v3, 0x10

    invoke-static {p0, v3}, Lcom/android/bluetooth/gatt/GattDebugUtils;->intToSignedBits(II)I

    move-result p0

    :sswitch_3
    add-int/lit8 v1, p1, 0x1

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p1

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    move p1, v1

    goto :goto_0

    :sswitch_4
    const/16 v3, 0x20

    invoke-static {p0, v3}, Lcom/android/bluetooth/gatt/GattDebugUtils;->intToSignedBits(II)I

    move-result p0

    :sswitch_5
    add-int/lit8 v1, p1, 0x1

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p1

    add-int/lit8 p1, v1, 0x1

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x12 -> :sswitch_3
        0x14 -> :sswitch_5
        0x21 -> :sswitch_0
        0x22 -> :sswitch_2
        0x24 -> :sswitch_4
    .end sparse-switch
.end method

.method private static getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "java.lang.String"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    return p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    return v3
.end method

.method private static getTypeLen(I)I
    .locals 1

    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method private static getUuidExtra(Landroid/content/Intent;)Ljava/util/UUID;
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "uuid"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "0000%s-0000-1000-8000-00805f9b34fb"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method static handleDebugAction(Lcom/android/bluetooth/gatt/GattService;Landroid/content/Intent;)Z
    .locals 82

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v72

    const-string/jumbo v2, "BtGatt.DebugUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDebugAction() action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v72

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.bluetooth.action.GATT_TEST_USAGE"

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/bluetooth/gatt/GattDebugUtils;->logUsageInfo()V

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_0
    const-string/jumbo v2, "android.bluetooth.action.GATT_TEST_ENABLE"

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "enable"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v74

    if-eqz v74, :cond_1

    const/4 v8, 0x1

    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;[B[SIIIII)V

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "android.bluetooth.action.GATT_TEST_CONNECT"

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "type"

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v2, "addr_type"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v73

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;[B[SIIIII)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "android.bluetooth.action.GATT_TEST_DISCONNECT"

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v19}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;[B[SIIIII)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "android.bluetooth.action.GATT_TEST_DISCOVER"

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getUuidExtra(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v11

    const-string/jumbo v2, "type"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v2, "start"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v16

    const-string/jumbo v2, "end"

    const v3, 0xffff

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v17

    const/4 v10, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v9, p0

    move v15, v8

    invoke-virtual/range {v9 .. v19}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;[B[SIIIII)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v2, "com.samsung.bluetooth.action.GATT_TEST_CONFIGURE_MTU"

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "mtu"

    const/16 v3, 0x17

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    const/16 v19, 0x5

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v28}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;[B[SIIIII)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "com.samsung.bluetooth.action.GATT_TEST_READ"

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getUuidExtra(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v11

    const-string/jumbo v2, "handle"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v32

    const-string/jumbo v2, "type"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string/jumbo v2, "start"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v16

    const-string/jumbo v2, "end"

    const v3, 0xffff

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v2, "offset"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v41

    const/4 v2, 0x1

    if-eq v15, v2, :cond_7

    const/4 v2, 0x4

    if-ne v15, v2, :cond_8

    :cond_7
    const/4 v10, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v19}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;[B[SIIIII)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x3

    if-ne v15, v2, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/gatt/GattDebugUtils;->convertHandlesExtra(Landroid/content/Intent;)[S

    move-result-object v30

    const/16 v26, 0x6

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v25, p0

    move-object/from16 v27, v11

    move/from16 v31, v15

    invoke-virtual/range {v25 .. v35}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;[B[SIIIII)V

    goto/16 :goto_0

    :cond_9
    const/16 v34, 0x6

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v33, p0

    move-object/from16 v35, v11

    move/from16 v39, v15

    move/from16 v40, v32

    invoke-virtual/range {v33 .. v43}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;[B[SIIIII)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "com.samsung.bluetooth.action.GATT_TEST_WRITE_ATTR"

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "type"

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v39

    const-string/jumbo v2, "handle"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v40

    const-string/jumbo v2, "offset"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v41

    const-string/jumbo v2, "auth_req"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v42

    const-string/jumbo v2, "int_type"

    const/16 v3, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v76

    const-string/jumbo v2, "value"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    const/16 v37, 0x0

    if-eqz v81, :cond_d

    const/16 v2, 0x11

    move/from16 v0, v76

    if-ne v0, v2, :cond_b

    const/16 v79, 0x0

    invoke-virtual/range {v81 .. v81}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v37, v0

    const/16 v77, 0x0

    const/16 v80, 0x0

    :goto_2
    invoke-virtual/range {v81 .. v81}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v77

    if-ge v0, v2, :cond_c

    add-int/lit8 v2, v77, 0x2

    move-object/from16 v0, v81

    move/from16 v1, v77

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v79

    move/from16 v0, v79

    int-to-byte v2, v0

    aput-byte v2, v37, v80

    const-string/jumbo v2, "BtGatt.DebugUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "byteval at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v80

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "th = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v37, v80

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v77, v77, 0x2

    add-int/lit8 v80, v80, 0x1

    goto :goto_2

    :cond_b
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    move-object/from16 v0, v81

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v37

    :cond_c
    :goto_3
    const/16 v34, 0x7

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v43, 0x0

    move-object/from16 v33, p0

    invoke-virtual/range {v33 .. v43}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;[B[SIIIII)V

    goto/16 :goto_0

    :catch_0
    move-exception v75

    invoke-virtual/range {v75 .. v75}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    :cond_d
    const-string/jumbo v2, "BtGatt.DebugUtils"

    const-string/jumbo v3, "handleDebugAction() action= write attr str val is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "int_value"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v78

    const/4 v2, 0x0

    move/from16 v0, v78

    move/from16 v1, v76

    invoke-static {v0, v2, v1}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getBytesFromInt(III)[B

    move-result-object v37

    goto :goto_3

    :cond_e
    const-string/jumbo v2, "com.samsung.bluetooth.action.GATT_TEST_EXECUTE_WRITE"

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "execute"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v49

    const/16 v44, 0x8

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    move-object/from16 v43, p0

    invoke-virtual/range {v43 .. v53}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;[B[SIIIII)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v2, "android.bluetooth.action.GATT_PAIRING_CONFIG"

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string/jumbo v2, "auth_req"

    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v42

    const-string/jumbo v2, "io_cap"

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v57

    const-string/jumbo v2, "init_key"

    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v58

    const-string/jumbo v2, "resp_key"

    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v59

    const-string/jumbo v2, "max_key"

    const/16 v3, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v60

    const/16 v51, 0xf0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v50, p0

    move/from16 v56, v42

    invoke-virtual/range {v50 .. v60}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;[B[SIIIII)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v2, "com.samsung.bluetooth.action.GATT_TEST_PAIR"

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string/jumbo v2, "address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v62, 0x9

    const/16 v63, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    move-object/from16 v61, p0

    move-object/from16 v64, v5

    invoke-virtual/range {v61 .. v71}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;[B[SIIIII)V

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    return v2
.end method

.method private static intToSignedBits(II)I
    .locals 3

    const/4 v2, 0x1

    if-gez p0, :cond_0

    add-int/lit8 v0, p1, -0x1

    shl-int v0, v2, v0

    add-int/lit8 v1, p1, -0x1

    shl-int v1, v2, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p0

    add-int p0, v0, v1

    :cond_0
    return p0
.end method

.method private static logUsageInfo()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "------------ GATT TEST ACTIONS  ----------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\nGATT_TEST_ENABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ez enable <bool>] Enable or disable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                       defaults to true (enable).\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\nGATT_TEST_CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n   --es address <bda>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei addr_type <type>] Possible values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         0 = Static (default)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         1 = Random\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei type <type>]   Default is 2 (LE Only)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\nGATT_TEST_PAIR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n   --es address <bda>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\nGATT_TEST_DISCONNECT\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\nGATT_TEST_CONFIGURE_MTU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei mtu <mtu>] mtu value . Defaults to 23"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\nGATT_TEST_DISCOVER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei type <type>]   Possible values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         1 = Discover all services (default)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         2 = Discover services by UUID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         3 = Discover included services"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         4 = Discover characteristics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         5 = Discover descriptors\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--es uuid <uuid>]   Optional; Can be either full 128-bit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                       UUID hex string, or 4 hex characters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                       for 16-bit UUIDs.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei start <hdl>]   Start of handle range (default 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei end <hdl>]     End of handle range (default 65355)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n    or"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--es start <hdl>]   Start of handle range (hex format)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--es end <hdl>]     End of handle range (hex format)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\nGATT_PAIRING_CONFIG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei auth_req]      Authentication flag (default 5)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         0 = GATT_AUTH_REQ_NONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         1 = GATT_AUTH_REQ_NO_MITM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         2 = GATT_AUTH_REQ_MITM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         3 = GATT_AUTH_REQ_SIGNED_NO_MITM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         4 = GATT_AUTH_REQ_SIGNED_MITM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei io_cap]        IO capabilities (default 4)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         0 = SMP_IO_CAP_OUT - DisplayOnly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         1 = SMP_IO_CAP_IO  - DisplayYesNo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         2 = SMP_IO_CAP_IN  - KeyboardOnly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         3 = SMP_IO_CAP_NONE - NoInputNoOutput "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         4 = SMP_IO_CAP_KBDISP - Keyboard Display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         5 = SMP_IO_CAP_MAX   -  BTM_IO_CAP_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei init_key]      Initial key size (default 7)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei resp_key]      Response key size (default 7)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei max_key]       Maximum key size (default 16)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\nGATT_TEST_READ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei type <type>]   Possible values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         1 = Read by Type (default)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         2 = Read By Handle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         3 = Read multi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         4 = Read Char Value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         5 = Read Partial\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--es uuid <uuid>]   Optional; Can be either full 128-bit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                       UUID hex string, or 4 hex characters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                       for 16-bit UUIDs.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei handle <hdl>]   handle (default 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei start <hdl>]   Start of handle range (default 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei end <hdl>]     End of handle range (default 65355)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n    or"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--es handle <hdl>]  handle (hex format)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--es start <hdl>]   Start of handle range (hex format)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--es end <hdl>]     End of handle range (hex format)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\nGATT_TEST_WRITE_ATTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei type <type>]   Possible values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         1 = write no response(default)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         2 = Write"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         3 = Write prepare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--es uuid <uuid>]   Optional; Can be either full 128-bit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                       UUID hex string, or 4 hex characters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                       for 16-bit UUIDs.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei handle <hdl>]   handle (default 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n    or"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--es handle <hdl>]  handle (hex format)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei auth_req <hdl>]   auth_req (default 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         0 = GATT_AUTH_REQ_NONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         1 = GATT_AUTH_REQ_NO_MITM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         2 = GATT_AUTH_REQ_MITM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         3 = GATT_AUTH_REQ_SIGNED_NO_MITM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         4 = GATT_AUTH_REQ_SIGNED_MITM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei offset <offset>]   offset(default 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--es value <value>]   Value to be written to the characteristic as string\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei int_value <value>]   Value to be written to the characteristic as integer\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei int_type <val_type>]   int_type (default 0x11)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         FORMAT_UINT8 = 17"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         FORMAT_UINT16 = 18"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         FORMAT_UINT32 = 20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         FORMAT_SINT8 = 33"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         FORMAT_SINT16 = 34"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         FORMAT_SINT32 = 36"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\nGATT_TEST_EXECUTE_WRITE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  [--ei execute <type>]   Possible values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         0 = Remove all previous write requests"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n                         1 = Write all previous write requests"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BtGatt.DebugUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
