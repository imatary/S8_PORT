.class public Lcom/android/bluetooth/sap/SapMessage;
.super Ljava/lang/Object;
.source "SapMessage.java"


# static fields
.field public static final CON_STATUS_ERROR_CONNECTION:I = 0x1

.field public static final CON_STATUS_ERROR_MAX_MSG_SIZE_TOO_SMALL:I = 0x3

.field public static final CON_STATUS_ERROR_MAX_MSG_SIZE_UNSUPPORTED:I = 0x2

.field public static final CON_STATUS_OK:I = 0x0

.field public static final CON_STATUS_OK_ONGOING_CALL:I = 0x4

.field public static final DEBUG:Z

.field public static final DISC_FORCED:I = 0x100

.field public static final DISC_GRACEFULL:I = 0x0

.field public static final DISC_IMMEDIATE:I = 0x1

.field public static final DISC_RFCOMM:I = 0x101

.field public static final ID_CONNECT_REQ:I = 0x0

.field public static final ID_CONNECT_RESP:I = 0x1

.field public static final ID_DISCONNECT_IND:I = 0x4

.field public static final ID_DISCONNECT_REQ:I = 0x2

.field public static final ID_DISCONNECT_RESP:I = 0x3

.field public static final ID_ERROR_RESP:I = 0x12

.field public static final ID_POWER_SIM_OFF_REQ:I = 0x9

.field public static final ID_POWER_SIM_OFF_RESP:I = 0xa

.field public static final ID_POWER_SIM_ON_REQ:I = 0xb

.field public static final ID_POWER_SIM_ON_RESP:I = 0xc

.field public static final ID_RESET_SIM_REQ:I = 0xd

.field public static final ID_RESET_SIM_RESP:I = 0xe

.field public static final ID_RIL_BASE:I = 0x100

.field public static final ID_RIL_GET_SIM_STATUS_REQ:I = 0x200

.field public static final ID_RIL_SIM_ACCESS_TEST_REQ:I = 0x201

.field public static final ID_RIL_SIM_ACCESS_TEST_RESP:I = 0x202

.field public static final ID_RIL_UNKNOWN:I = 0x1ff

.field public static final ID_RIL_UNSOL_CONNECTED:I = 0x100

.field public static final ID_RIL_UNSOL_DISCONNECT_IND:I = 0x102

.field public static final ID_SET_TRANSPORT_PROTOCOL_REQ:I = 0x13

.field public static final ID_SET_TRANSPORT_PROTOCOL_RESP:I = 0x14

.field public static final ID_STATUS_IND:I = 0x11

.field public static final ID_TRANSFER_APDU_REQ:I = 0x5

.field public static final ID_TRANSFER_APDU_RESP:I = 0x6

.field public static final ID_TRANSFER_ATR_REQ:I = 0x7

.field public static final ID_TRANSFER_ATR_RESP:I = 0x8

.field public static final ID_TRANSFER_CARD_READER_STATUS_REQ:I = 0xf

.field public static final ID_TRANSFER_CARD_READER_STATUS_RESP:I = 0x10

.field public static final INVALID_VALUE:I = -0x1

.field public static final PARAM_ATR_ID:I = 0x6

.field public static final PARAM_CARD_READER_STATUS_ID:I = 0x7

.field public static final PARAM_CARD_READER_STATUS_LENGTH:I = 0x1

.field public static final PARAM_COMMAND_APDU7816_ID:I = 0x10

.field public static final PARAM_COMMAND_APDU_ID:I = 0x4

.field public static final PARAM_CONNECTION_STATUS_ID:I = 0x1

.field public static final PARAM_CONNECTION_STATUS_LENGTH:I = 0x1

.field public static final PARAM_DISCONNECT_TYPE_ID:I = 0x3

.field public static final PARAM_DISCONNECT_TYPE_LENGTH:I = 0x1

.field public static final PARAM_MAX_MSG_SIZE_ID:I = 0x0

.field public static final PARAM_MAX_MSG_SIZE_LENGTH:I = 0x2

.field public static final PARAM_RESPONSE_APDU_ID:I = 0x5

.field public static final PARAM_RESULT_CODE_ID:I = 0x2

.field public static final PARAM_RESULT_CODE_LENGTH:I = 0x1

.field public static final PARAM_STATUS_CHANGE_ID:I = 0x8

.field public static final PARAM_STATUS_CHANGE_LENGTH:I = 0x1

.field public static final PARAM_TRANSPORT_PROTOCOL_ID:I = 0x9

.field public static final PARAM_TRANSPORT_PROTOCOL_LENGTH:I = 0x1

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field public static final RESULT_ERROR_CARD_NOT_ACCESSIBLE:I = 0x2

.field public static final RESULT_ERROR_CARD_POWERED_OFF:I = 0x3

.field public static final RESULT_ERROR_CARD_POWERED_ON:I = 0x5

.field public static final RESULT_ERROR_CARD_REMOVED:I = 0x4

.field public static final RESULT_ERROR_DATA_NOT_AVAILABLE:I = 0x6

.field public static final RESULT_ERROR_NOT_SUPPORTED:I = 0x7

.field public static final RESULT_ERROR_NO_REASON:I = 0x1

.field public static final RESULT_OK:I = 0x0

.field public static final STATUS_CARD_INSERTED:I = 0x4

.field public static final STATUS_CARD_NOT_ACCESSIBLE:I = 0x2

.field public static final STATUS_CARD_REMOVED:I = 0x3

.field public static final STATUS_CARD_RESET:I = 0x1

.field public static final STATUS_RECOVERED:I = 0x5

.field public static final STATUS_UNKNOWN_ERROR:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SapMessage"

.field public static final TEST:Z = false

.field public static final TEST_MODE_DISABLE:I = 0x0

.field public static final TEST_MODE_ENABLE:I = 0x1

.field public static final TRANS_PROTO_T0:I = 0x0

.field public static final TRANS_PROTO_T1:I = 0x1

.field public static final VERBOSE:Z

.field static sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sOngoingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApdu:[B

.field private mApdu7816:[B

.field private mApduResp:[B

.field private mAtr:[B

.field private mCardReaderStatus:I

.field private mClearRilQueue:Z

.field private mConnectionStatus:I

.field private mDisconnectionType:I

.field private mMaxMsgSize:I

.field private mMsgType:I

.field private mResultCode:I

.field private mSendToRil:Z

.field private mStatusChange:I

.field private mTestMode:I

.field private mTransportProtocol:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/sap/SapMessage;->DEBUG:Z

    sget-boolean v0, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/bluetooth/sap/SapMessage;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mSendToRil:Z

    iput-boolean v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mClearRilQueue:Z

    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mTestMode:I

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    return-void
.end method

.method private constructor <init>(Lorg/android/btsap/SapApi$MsgHeader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/bluetooth/sap/SapMessage;->mSendToRil:Z

    iput-boolean v3, p0, Lcom/android/bluetooth/sap/SapMessage;->mClearRilQueue:Z

    iput v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    iput v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    iput v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    iput v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    iput v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    iput v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    iput v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    iput v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    iput v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mTestMode:I

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    :try_start_0
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wrong msg header received: Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SapMessage"

    const-string/jumbo v2, "Error occured parsing a RIL message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Error occured parsing a RIL message"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapMessage;->createUnsolicited(Lorg/android/btsap/SapApi$MsgHeader;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapMessage;->createSolicited(Lorg/android/btsap/SapApi$MsgHeader;)V
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createSolicited(Lorg/android/btsap/SapApi$MsgHeader;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->hasToken()Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Token is missing"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->hasError()Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Error code is missing"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getToken()I

    move-result v9

    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getError()I

    move-result v0

    const/4 v1, 0x0

    sget-object v10, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-boolean v10, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v10, :cond_2

    const-string/jumbo v11, "SapMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "RIL SOLICITED serial: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ", error: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " SapReqType: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v1, :cond_3

    const-string/jumbo v10, "null"

    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v1, :cond_4

    const-string/jumbo v10, "SapMessage"

    const-string/jumbo v11, "Solicited response received on a command not initiated - ignoring."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/android/bluetooth/sap/SapMessage;->getMsgTypeName(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/android/bluetooth/sap/SapMessage;->mapRilErrorCode(I)I

    move-result v10

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    const-string/jumbo v10, "SapMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unknown request type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void

    :sswitch_0
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    move-result-object v3

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    invoke-virtual {v3}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasMaxMessageSize()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v3}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getMaxMessageSize()I

    move-result v10

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    :cond_6
    sget-boolean v10, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v10, :cond_7

    const-string/jumbo v10, "SapMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ID_CONNECT_RESP : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getResponse()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v3}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getResponse()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    :goto_2
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    sget-boolean v10, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v10, :cond_5

    const-string/jumbo v10, "SapMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  ID_CONNECT_REQ: mMaxMsgSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "  mConnectionStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    goto :goto_2

    :pswitch_1
    const/4 v10, 0x4

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    goto :goto_2

    :pswitch_2
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    goto :goto_2

    :pswitch_3
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    goto :goto_2

    :pswitch_4
    const/4 v10, 0x3

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    goto :goto_2

    :sswitch_1
    const/4 v10, 0x3

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    const/4 v10, -0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    move-result-object v2

    const/4 v10, 0x6

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    invoke-virtual {v2}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getResponse()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :pswitch_5
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    invoke-virtual {v2}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasApduResponse()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v2}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getApduResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v10

    iput-object v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    goto/16 :goto_1

    :pswitch_6
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :pswitch_7
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :pswitch_8
    const/4 v10, 0x3

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :pswitch_9
    const/4 v10, 0x4

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;

    move-result-object v6

    const/16 v10, 0x14

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    sget-boolean v10, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v10, :cond_8

    const-string/jumbo v10, "SapMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ID_SET_TRANSPORT_PROTOCOL_RESP : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->getResponse()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v6}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->getResponse()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    const/4 v10, 0x7

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_4
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_5
    const/4 v10, 0x7

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_6
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_7
    const/4 v10, 0x3

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_8
    const/4 v10, 0x4

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    move-result-object v7

    const/16 v10, 0x8

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    invoke-virtual {v7}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasAtr()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v7}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getAtr()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v10

    iput-object v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    :cond_9
    sget-boolean v10, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v10, :cond_a

    const-string/jumbo v10, "SapMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ID_TRANSFER_ATR_RESP : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getResponse()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v7}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getResponse()I

    move-result v10

    sparse-switch v10, :sswitch_data_2

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_a
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_b
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_c
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_d
    const/4 v10, 0x3

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_e
    const/4 v10, 0x5

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_f
    const/4 v10, 0x6

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_10
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;

    move-result-object v4

    const/16 v10, 0xa

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    sget-boolean v10, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v10, :cond_b

    const-string/jumbo v10, "SapMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ID_POWER_SIM_OFF_REQ : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;->getResponse()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v4}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;->getResponse()I

    move-result v10

    sparse-switch v10, :sswitch_data_3

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_11
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_12
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_13
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_14
    const/4 v10, 0x3

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_15
    const/4 v10, 0x5

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_16
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;

    move-result-object v4

    const/16 v10, 0xc

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    sget-boolean v10, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v10, :cond_c

    const-string/jumbo v10, "SapMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ID_POWER_SIM_ON_RESP : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;->getResponse()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v4}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;->getResponse()I

    move-result v10

    sparse-switch v10, :sswitch_data_4

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_17
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_18
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_19
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_1a
    const/4 v10, 0x3

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_1b
    const/4 v10, 0x5

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_1c
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;

    move-result-object v5

    const/16 v10, 0xe

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    sget-boolean v10, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v10, :cond_d

    const-string/jumbo v10, "SapMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ID_RESET_SIM_RESP : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->getResponse()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v5}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->getResponse()I

    move-result v10

    sparse-switch v10, :sswitch_data_5

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_1d
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_1e
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_1f
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_20
    const/4 v10, 0x3

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_21
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_RSP;

    move-result-object v8

    const/16 v10, 0x10

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    sget-boolean v10, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v10, :cond_e

    const-string/jumbo v10, "SapMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ID_TRANSFER_CARD_READER_STATUS_RESP : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_RSP;->getResponse()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v8}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_RSP;->getResponse()I

    move-result v10

    sparse-switch v10, :sswitch_data_6

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_22
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    invoke-virtual {v8}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_RSP;->hasCardReaderStatus()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v8}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_RSP;->getCardReaderStatus()I

    move-result v10

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v10, "SapMessage"

    const-string/jumbo v11, "CARD_READER_STATUS_RSP from RIL has NO value. dummy SENT to Carkit"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    const/16 v10, 0xf0

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    goto/16 :goto_1

    :sswitch_23
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_24
    const/4 v10, 0x6

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    goto/16 :goto_1

    :sswitch_25
    const/16 v10, 0x202

    iput v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0x7 -> :sswitch_9
        0x9 -> :sswitch_10
        0xb -> :sswitch_16
        0xd -> :sswitch_1c
        0xf -> :sswitch_21
        0x13 -> :sswitch_3
        0x201 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x2 -> :sswitch_5
        0xb -> :sswitch_6
        0x10 -> :sswitch_8
        0x11 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_b
        0x3 -> :sswitch_d
        0x4 -> :sswitch_c
        0x6 -> :sswitch_f
        0x12 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_11
        0x2 -> :sswitch_12
        0xb -> :sswitch_13
        0x11 -> :sswitch_14
        0x12 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_17
        0x2 -> :sswitch_18
        0xb -> :sswitch_19
        0x11 -> :sswitch_1a
        0x12 -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x0 -> :sswitch_1d
        0x2 -> :sswitch_1e
        0xb -> :sswitch_1f
        0x11 -> :sswitch_20
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        0x0 -> :sswitch_22
        0x2 -> :sswitch_23
        0x6 -> :sswitch_24
    .end sparse-switch
.end method

.method private createUnsolicited(Lorg/android/btsap/SapApi$MsgHeader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    const/16 v5, 0x1ff

    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    sget-boolean v2, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SapMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unused unsolicited message received, ignoring: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    sget-boolean v2, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "SapMessage"

    const-string/jumbo v3, "RIL_SIM_SAP_STATUS_IND received"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->hasStatusChange()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->getStatusChange()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/sap/SapMessage;->setStatusChange(I)V

    sget-boolean v2, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SapMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RIL_UNSOL_SIM_SAP_STATUS_IND received value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "SapMessage"

    const-string/jumbo v3, "Wrong number of parameters in SAP_STATUS_IND, ignoring..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    goto :goto_0

    :sswitch_1
    sget-boolean v2, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "SapMessage"

    const-string/jumbo v3, "RIL_SIM_SAP_DISCONNECT_IND received"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    move-result-object v0

    const/16 v2, 0x102

    iput v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    invoke-virtual {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->hasDisconnectType()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->getDisconnectType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/sap/SapMessage;->setDisconnectionType(I)V

    sget-boolean v2, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SapMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RIL_UNSOL_SIM_SAP_STATUS_IND received value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    sget-boolean v2, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "SapMessage"

    const-string/jumbo v3, "Wrong number of parameters in SAP_STATUS_IND, ignoring..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getMsgTypeName(I)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/sap/SapMessage;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v0, :cond_1

    :cond_0
    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown Message Type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "ID_CONNECT_REQ"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "ID_CONNECT_RESP"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "ID_DISCONNECT_REQ"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "ID_DISCONNECT_RESP"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "ID_DISCONNECT_IND"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "ID_TRANSFER_APDU_REQ"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "ID_TRANSFER_APDU_RESP"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "ID_TRANSFER_ATR_REQ"

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "ID_TRANSFER_ATR_RESP"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "ID_POWER_SIM_OFF_REQ"

    return-object v0

    :sswitch_a
    const-string/jumbo v0, "ID_POWER_SIM_OFF_RESP"

    return-object v0

    :sswitch_b
    const-string/jumbo v0, "ID_POWER_SIM_ON_REQ"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "ID_POWER_SIM_ON_RESP"

    return-object v0

    :sswitch_d
    const-string/jumbo v0, "ID_RESET_SIM_REQ"

    return-object v0

    :sswitch_e
    const-string/jumbo v0, "ID_RESET_SIM_RESP"

    return-object v0

    :sswitch_f
    const-string/jumbo v0, "ID_TRANSFER_CARD_READER_STATUS_REQ"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "ID_TRANSFER_CARD_READER_STATUS_RESP"

    return-object v0

    :sswitch_11
    const-string/jumbo v0, "ID_STATUS_IND"

    return-object v0

    :sswitch_12
    const-string/jumbo v0, "ID_ERROR_RESP"

    return-object v0

    :sswitch_13
    const-string/jumbo v0, "ID_SET_TRANSPORT_PROTOCOL_REQ"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "ID_SET_TRANSPORT_PROTOCOL_RESP"

    return-object v0

    :sswitch_15
    const-string/jumbo v0, "ID_RIL_UNSOL_CONNECTED"

    return-object v0

    :sswitch_16
    const-string/jumbo v0, "ID_RIL_UNKNOWN"

    return-object v0

    :sswitch_17
    const-string/jumbo v0, "ID_RIL_GET_SIM_STATUS_REQ"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "ID_RIL_SIM_ACCESS_TEST_REQ"

    return-object v0

    :sswitch_19
    const-string/jumbo v0, "ID_RIL_SIM_ACCESS_TEST_RESP"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x100 -> :sswitch_15
        0x1ff -> :sswitch_16
        0x200 -> :sswitch_17
        0x201 -> :sswitch_18
        0x202 -> :sswitch_19
    .end sparse-switch
.end method

.method public static getNumPendingRilMessages()I
    .locals 1

    sget-object v0, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method private getParamCount()I
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    if-eq v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    if-eq v1, v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    if-eq v1, v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    if-eq v1, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    if-eqz v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    if-eqz v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    return v0
.end method

.method private static mapRilErrorCode(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    const/4 v0, 0x2

    return v0

    :pswitch_4
    return v0

    :pswitch_5
    const/4 v0, 0x7

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static newInstance(Lorg/android/btsap/SapApi$MsgHeader;)Lcom/android/bluetooth/sap/SapMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/sap/SapMessage;-><init>(Lorg/android/btsap/SapApi$MsgHeader;)V

    return-object v0
.end method

.method private parseParameters(ILjava/io/InputStream;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_9

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v5, v2, 0x8

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v6

    or-int v2, v5, v6

    rem-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_0

    rem-int/lit8 v5, v2, 0x4

    rsub-int/lit8 v3, v5, 0x4

    :cond_0
    sget-boolean v5, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "SapMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parsing paramId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v5, "SapMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received unknown parameter ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " skipping this parameter."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int v5, v2, v3

    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    if-eq v2, v10, :cond_2

    const-string/jumbo v5, "SapMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received PARAM_MAX_MSG_SIZE with wrong length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " skipping this parameter."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int v5, v2, v3

    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    iget v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    shl-int/lit8 v5, v5, 0x8

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    invoke-static {p2, v10}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    goto :goto_1

    :pswitch_2
    new-array v5, v2, [B

    iput-object v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->read(Ljava/io/InputStream;[B)V

    invoke-static {p2, v3}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    goto :goto_1

    :pswitch_3
    new-array v5, v2, [B

    iput-object v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->read(Ljava/io/InputStream;[B)V

    invoke-static {p2, v3}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    goto :goto_1

    :pswitch_4
    if-eq v2, v8, :cond_3

    const-string/jumbo v5, "SapMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received PARAM_TRANSPORT_PROTOCOL with wrong length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " skipping this parameter."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int v5, v2, v3

    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    invoke-static {p2, v9}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_1

    :pswitch_5
    if-eq v2, v8, :cond_4

    const-string/jumbo v5, "SapMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received PARAM_CONNECTION_STATUS with wrong length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " skipping this parameter."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int v5, v2, v3

    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    invoke-static {p2, v9}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_1

    :pswitch_6
    if-eq v2, v8, :cond_5

    const-string/jumbo v5, "SapMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received PARAM_CARD_READER_STATUS with wrong length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " skipping this parameter."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int v5, v2, v3

    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    invoke-static {p2, v9}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_1

    :pswitch_7
    if-eq v2, v8, :cond_6

    const-string/jumbo v5, "SapMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received PARAM_STATUS_CHANGE with wrong length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " skipping this parameter."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int v5, v2, v3

    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    invoke-static {p2, v9}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_1

    :pswitch_8
    if-eq v2, v8, :cond_7

    const-string/jumbo v5, "SapMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received PARAM_RESULT_CODE with wrong length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " skipping this parameter."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int v5, v2, v3

    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    invoke-static {p2, v9}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_1

    :pswitch_9
    if-eq v2, v8, :cond_8

    const-string/jumbo v5, "SapMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received PARAM_DISCONNECT_TYPE_ID with wrong length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " skipping this parameter."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int v5, v2, v3

    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    invoke-static {p2, v9}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_1

    :pswitch_a
    new-array v5, v2, [B

    iput-object v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->read(Ljava/io/InputStream;[B)V

    invoke-static {p2, v3}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_1

    :pswitch_b
    new-array v5, v2, [B

    iput-object v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->read(Ljava/io/InputStream;[B)V

    invoke-static {p2, v3}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_1

    :cond_9
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static read(Ljava/io/InputStream;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    sub-int v3, v1, v0

    invoke-virtual {p0, p1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "EOS reached while reading a byte array."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static readMessage(ILjava/io/InputStream;)Lcom/android/bluetooth/sap/SapMessage;
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    if-lez v2, :cond_1

    sget-boolean v3, Lcom/android/bluetooth/sap/SapMessage;->VERBOSE:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SapMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Parsing message with paramCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {v1, v2, p1}, Lcom/android/bluetooth/sap/SapMessage;->parseParameters(ILjava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    return-object v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SapMessage"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6

    :cond_1
    sget-boolean v3, Lcom/android/bluetooth/sap/SapMessage;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "SapMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readMessage() Read message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/android/bluetooth/sap/SapMessage;->getMsgTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v3, "SapMessage"

    const-string/jumbo v4, "Unknown request type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :pswitch_1
    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapMessage;->getMaxMsgSize()I

    move-result v3

    if-ne v3, v8, :cond_4

    const-string/jumbo v3, "SapMessage"

    const-string/jumbo v4, "Missing MaxMsgSize parameter in CONNECT_REQ"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :pswitch_2
    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapMessage;->getApdu()[B

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapMessage;->getApdu7816()[B

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "SapMessage"

    const-string/jumbo v4, "Missing Apdu parameter in TRANSFER_APDU_REQ"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_3
    invoke-virtual {v1, v7}, Lcom/android/bluetooth/sap/SapMessage;->setSendToRil(Z)V

    :cond_4
    :goto_0
    :pswitch_3
    return-object v1

    :pswitch_4
    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapMessage;->getTransportProtocol()I

    move-result v3

    if-ne v3, v8, :cond_5

    const-string/jumbo v3, "SapMessage"

    const-string/jumbo v4, "Missing TransportProtocol parameter in SET_TRANSPORT_PROTOCOL_REQ"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_5
    invoke-virtual {v1, v7}, Lcom/android/bluetooth/sap/SapMessage;->setSendToRil(Z)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v1, v7}, Lcom/android/bluetooth/sap/SapMessage;->setSendToRil(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static resetPendingRilMessages()V
    .locals 4

    sget-object v1, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SapMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Clearing message queue with size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method private static skip(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeLength(ILcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x4

    new-array v0, v2, [B

    const/4 v2, 0x1

    aput-byte v3, v0, v2

    aput-byte v3, v0, v3

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    :try_start_0
    invoke-virtual {p2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawBytes([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SapMessage"

    const-string/jumbo v3, "NullPointerException occurred during writting bytes"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static writeParameter(Ljava/io/OutputStream;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write(I)V

    packed-switch p3, :pswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to write value of length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    and-int/lit16 v0, p2, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :pswitch_1
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 v0, p2, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static writeParameter(Ljava/io/OutputStream;I[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    array-length v1, p2

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    array-length v1, p2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    array-length v1, p2

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getApdu()[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    return-object v0
.end method

.method public getApdu7816()[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    return-object v0
.end method

.method public getApduResp()[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    return-object v0
.end method

.method public getAtr()[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    return-object v0
.end method

.method public getCardReaderStatus()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    return v0
.end method

.method public getClearRilQueue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mClearRilQueue:Z

    return v0
.end method

.method public getConnectionStatus()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    return v0
.end method

.method public getDisconnectionType()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    return v0
.end method

.method public getMaxMsgSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    return v0
.end method

.method public getSendToRil()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mSendToRil:Z

    return v0
.end method

.method public getStatusChange()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    return v0
.end method

.method public getTestMode()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mTestMode:I

    return v0
.end method

.method public getTransportProtocol()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    return v0
.end method

.method public setApdu([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    return-void
.end method

.method public setApdu7816([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    return-void
.end method

.method public setApduResp([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    return-void
.end method

.method public setAtr([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    return-void
.end method

.method public setCardReaderStatus(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    return-void
.end method

.method public setClearRilQueue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mClearRilQueue:Z

    return-void
.end method

.method public setConnectionStatus(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    return-void
.end method

.method public setDisconnectionType(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    return-void
.end method

.method public setMaxMsgSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    return-void
.end method

.method public setSendToRil(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mSendToRil:Z

    return-void
.end method

.method public setStatusChange(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    return-void
.end method

.method public setTestMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mTestMode:I

    return-void
.end method

.method public setTransportProtocol(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapMessage;->getParamCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    invoke-static {p1, v3, v0, v3}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;III)V

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    invoke-static {p1, v1, v0, v4}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;III)V

    :cond_1
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    invoke-static {p1, v4, v0, v3}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;III)V

    :cond_2
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v3}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;III)V

    :cond_3
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    const/4 v1, 0x7

    invoke-static {p1, v1, v0, v3}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;III)V

    :cond_4
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    const/16 v1, 0x8

    invoke-static {p1, v1, v0, v3}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;III)V

    :cond_5
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    if-eq v0, v2, :cond_6

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    const/16 v1, 0x9

    invoke-static {p1, v1, v0, v3}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;III)V

    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;I[B)V

    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    const/16 v1, 0x10

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;I[B)V

    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;I[B)V

    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;I[B)V

    :cond_a
    return-void
.end method

.method public writeReqToStream(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v10, Lcom/android/bluetooth/sap/SapMessage;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    new-instance v0, Lorg/android/btsap/SapApi$MsgHeader;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$MsgHeader;-><init>()V

    invoke-virtual {v0, v9}, Lorg/android/btsap/SapApi$MsgHeader;->setToken(I)Lorg/android/btsap/SapApi$MsgHeader;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setType(I)Lorg/android/btsap/SapApi$MsgHeader;

    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setError(I)Lorg/android/btsap/SapApi$MsgHeader;

    iget v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v10, "SapMessage"

    const-string/jumbo v11, "Unknown request type"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :pswitch_1
    new-instance v2, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;

    invoke-direct {v2}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;-><init>()V

    iget v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    invoke-virtual {v2, v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->setMaxMessageSize(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setId(I)Lorg/android/btsap/SapApi$MsgHeader;

    invoke-virtual {v2}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$MsgHeader;

    invoke-virtual {v0}, Lorg/android/btsap/SapApi$MsgHeader;->getSerializedSize()I

    move-result v10

    invoke-direct {p0, v10, p1}, Lcom/android/bluetooth/sap/SapMessage;->writeLength(ILcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    invoke-virtual {v0, p1}, Lorg/android/btsap/SapApi$MsgHeader;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    :goto_0
    iget-boolean v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mClearRilQueue:Z

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/bluetooth/sap/SapMessage;->resetPendingRilMessages()V

    :cond_0
    sget-object v10, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->flush()V

    return-void

    :pswitch_2
    new-instance v3, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_REQ;

    invoke-direct {v3}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_REQ;-><init>()V

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setId(I)Lorg/android/btsap/SapApi$MsgHeader;

    invoke-virtual {v3}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_REQ;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$MsgHeader;

    invoke-virtual {v0}, Lorg/android/btsap/SapApi$MsgHeader;->getSerializedSize()I

    move-result v10

    invoke-direct {p0, v10, p1}, Lcom/android/bluetooth/sap/SapMessage;->writeLength(ILcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    invoke-virtual {v0, p1}, Lorg/android/btsap/SapApi$MsgHeader;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;

    invoke-direct {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;-><init>()V

    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setId(I)Lorg/android/btsap/SapApi$MsgHeader;

    iget-object v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->setType(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;

    iget-object v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    invoke-static {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->setCommand(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;

    :goto_1
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$MsgHeader;

    invoke-virtual {v0}, Lorg/android/btsap/SapApi$MsgHeader;->getSerializedSize()I

    move-result v10

    invoke-direct {p0, v10, p1}, Lcom/android/bluetooth/sap/SapMessage;->writeLength(ILcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    invoke-virtual {v0, p1}, Lorg/android/btsap/SapApi$MsgHeader;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->setType(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;

    iget-object v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    invoke-static {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->setCommand(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;

    goto :goto_1

    :cond_2
    const-string/jumbo v10, "SapMessage"

    const-string/jumbo v11, "Missing Apdu parameter in TRANSFER_APDU_REQ"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :pswitch_4
    new-instance v6, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;

    invoke-direct {v6}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;-><init>()V

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setId(I)Lorg/android/btsap/SapApi$MsgHeader;

    iget v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    if-nez v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->setProtocol(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;

    :goto_2
    invoke-virtual {v6}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$MsgHeader;

    invoke-virtual {v0}, Lorg/android/btsap/SapApi$MsgHeader;->getSerializedSize()I

    move-result v10

    invoke-direct {p0, v10, p1}, Lcom/android/bluetooth/sap/SapMessage;->writeLength(ILcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    invoke-virtual {v0, p1}, Lorg/android/btsap/SapApi$MsgHeader;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    goto/16 :goto_0

    :cond_3
    iget v10, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->setProtocol(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;

    goto :goto_2

    :cond_4
    const-string/jumbo v10, "SapMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Missing or invalid TransportProtocol parameter in SET_TRANSPORT_PROTOCOL_REQ: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :pswitch_5
    new-instance v7, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_REQ;

    invoke-direct {v7}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_REQ;-><init>()V

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setId(I)Lorg/android/btsap/SapApi$MsgHeader;

    invoke-virtual {v7}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_REQ;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$MsgHeader;

    invoke-virtual {v0}, Lorg/android/btsap/SapApi$MsgHeader;->getSerializedSize()I

    move-result v10

    invoke-direct {p0, v10, p1}, Lcom/android/bluetooth/sap/SapMessage;->writeLength(ILcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    invoke-virtual {v0, p1}, Lorg/android/btsap/SapApi$MsgHeader;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v4, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    invoke-direct {v4}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;-><init>()V

    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setId(I)Lorg/android/btsap/SapApi$MsgHeader;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->setState(Z)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    invoke-virtual {v4}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$MsgHeader;

    invoke-virtual {v0}, Lorg/android/btsap/SapApi$MsgHeader;->getSerializedSize()I

    move-result v10

    invoke-direct {p0, v10, p1}, Lcom/android/bluetooth/sap/SapMessage;->writeLength(ILcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    invoke-virtual {v0, p1}, Lorg/android/btsap/SapApi$MsgHeader;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v4, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    invoke-direct {v4}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;-><init>()V

    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setId(I)Lorg/android/btsap/SapApi$MsgHeader;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->setState(Z)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    invoke-virtual {v4}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$MsgHeader;

    invoke-virtual {v0}, Lorg/android/btsap/SapApi$MsgHeader;->getSerializedSize()I

    move-result v10

    invoke-direct {p0, v10, p1}, Lcom/android/bluetooth/sap/SapMessage;->writeLength(ILcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    invoke-virtual {v0, p1}, Lorg/android/btsap/SapApi$MsgHeader;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v5, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_REQ;

    invoke-direct {v5}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_REQ;-><init>()V

    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setId(I)Lorg/android/btsap/SapApi$MsgHeader;

    invoke-virtual {v5}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_REQ;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$MsgHeader;

    invoke-virtual {v0}, Lorg/android/btsap/SapApi$MsgHeader;->getSerializedSize()I

    move-result v10

    invoke-direct {p0, v10, p1}, Lcom/android/bluetooth/sap/SapMessage;->writeLength(ILcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    invoke-virtual {v0, p1}, Lorg/android/btsap/SapApi$MsgHeader;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v8, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;

    invoke-direct {v8}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;-><init>()V

    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setId(I)Lorg/android/btsap/SapApi$MsgHeader;

    invoke-virtual {v8}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/android/btsap/SapApi$MsgHeader;->setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$MsgHeader;

    invoke-virtual {v0}, Lorg/android/btsap/SapApi$MsgHeader;->getSerializedSize()I

    move-result v10

    invoke-direct {p0, v10, p1}, Lcom/android/bluetooth/sap/SapMessage;->writeLength(ILcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    invoke-virtual {v0, p1}, Lorg/android/btsap/SapApi$MsgHeader;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
