.class public Lcom/android/phone/tphone/TPhoneConst;
.super Ljava/lang/Object;
.source "TPhoneConst.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callStateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "IDLE"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "ACTIVE"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "HOLDING"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "DIALING"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "ALERTING"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "INCOMING"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "WAITING"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "DISCONNECTED"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "DISCONNECTING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static callTypeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "CS_CALL_VOICE "

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "CS_CALL_VIDEO "

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "IMS_NARROWBAND_CALL_VOICE"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "IMS_WIDEBAND_CALL_VOICE"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "IMS_WIDEBAND_CALL_VIDEO"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "IMS_CALL_VIDEO_CONFERENCE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static phoneEventToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "PHONE_STATE_CHANGED"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "PHONE_NEW_RINGING_CONNECTION"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "PHONE_DISCONNECT"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "PHONE_INCOMING_RING"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "PHONE_ON_DIAL_CHARS"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "PHONE_INCOMING_MODIFY_CALL_REQUEST"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "SUPP_SERVICE_FAILED"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "SS_INFO"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0xd -> :sswitch_4
        0x64 -> :sswitch_5
        0x6e -> :sswitch_6
        0x6f -> :sswitch_7
    .end sparse-switch
.end method
