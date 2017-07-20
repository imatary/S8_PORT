.class public Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;
.super Ljava/lang/Object;
.source "CSVideoProvider.java"

# interfaces
.implements Lsiso/vt/VTManager$VTStackStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/vt/CSVideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CSMediaListener"
.end annotation


# static fields
.field private static final synthetic -siso-vt-VTManager$VTEventForUISwitchesValues:[I


# instance fields
.field private mCallback:Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;

.field final synthetic this$0:Lcom/android/services/telephony/vt/CSVideoProvider;


# direct methods
.method private static synthetic -getsiso-vt-VTManager$VTEventForUISwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->-siso-vt-VTManager$VTEventForUISwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->-siso-vt-VTManager$VTEventForUISwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lsiso/vt/VTManager$VTEventForUI;->values()[Lsiso/vt/VTManager$VTEventForUI;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H234M_FC_VOL_READ_FAILED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3f

    :goto_0
    :try_start_1
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_FILE_READ_ERR:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3e

    :goto_1
    :try_start_2
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3d

    :goto_2
    :try_start_3
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3c

    :goto_3
    :try_start_4
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3b

    :goto_4
    :try_start_5
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3a

    :goto_5
    :try_start_6
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_39

    :goto_6
    :try_start_7
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_STOP_FAILED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_38

    :goto_7
    :try_start_8
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_37

    :goto_8
    :try_start_9
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_36

    :goto_9
    :try_start_a
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_35

    :goto_a
    :try_start_b
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_34

    :goto_b
    :try_start_c
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_SUCESS:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_33

    :goto_c
    :try_start_d
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_STOP_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_32

    :goto_d
    :try_start_e
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_STOP_SUCESS:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_31

    :goto_e
    :try_start_f
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_VIDEO_ACTIVATED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_30

    :goto_f
    :try_start_10
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_VIDEO_DEACTIVATED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2f

    :goto_10
    :try_start_11
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IND_TO_APP_MAX:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_2e

    :goto_11
    :try_start_12
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_RB_CALL_DISCONNECTED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2d

    :goto_12
    :try_start_13
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_CANCEL_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_2c

    :goto_13
    :try_start_14
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_MAX_TIMEOUT:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_2b

    :goto_14
    :try_start_15
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_2a

    :goto_15
    :try_start_16
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_29

    :goto_16
    :try_start_17
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_28

    :goto_17
    :try_start_18
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_STOP_FAILED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_27

    :goto_18
    :try_start_19
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_26

    :goto_19
    :try_start_1a
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_ALL_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_25

    :goto_1a
    :try_start_1b
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_AUDIO_RX_OLC_CLOSED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_24

    :goto_1b
    :try_start_1c
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_AUDIO_RX_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_23

    :goto_1c
    :try_start_1d
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_AUDIO_TX_OLC_CLOSED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_22

    :goto_1d
    :try_start_1e
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_AUDIO_TX_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_21

    :goto_1e
    :try_start_1f
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_CALL_DEINITIALIZED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_20

    :goto_1f
    :try_start_20
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_CAMERA_CONNECT_FAILED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_1f

    :goto_20
    :try_start_21
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_CREATE_SESSION_CONFIRMED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_1e

    :goto_21
    :try_start_22
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_END_CALL_REQUEST:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_1d

    :goto_22
    :try_start_23
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_FIRST_VIDEO_FRAME_DECODED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_1c

    :goto_23
    :try_start_24
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_GENERATE_IFRAME:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_1b

    :goto_24
    :try_start_25
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_MRBT_END:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_1a

    :goto_25
    :try_start_26
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_MRBT_START:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_19

    :goto_26
    :try_start_27
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_NO_DATA_ERR_IND:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_18

    :goto_27
    :try_start_28
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_PREVIEW_VIDEO_DATA_IND:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_17

    :goto_28
    :try_start_29
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_PROTOCOL_ERR_IND:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_16

    :goto_29
    :try_start_2a
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_RECIEVED_DATA_IND:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_15

    :goto_2a
    :try_start_2b
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_REMOTE_VIDEO_DATA_IND:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_14

    :goto_2b
    :try_start_2c
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_SESSION_STOP_FAILED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_13

    :goto_2c
    :try_start_2d
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_SESSION_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_12

    :goto_2d
    :try_start_2e
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_SET_CAMERA_FRAME_RATE:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_11

    :goto_2e
    :try_start_2f
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_START_CALL_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_10

    :goto_2f
    :try_start_30
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_START_CALL_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_f

    :goto_30
    :try_start_31
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_UL_VIDEO_RESOURCE_INIT_DONE:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_e

    :goto_31
    :try_start_32
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_USER_INPUT_INDICATION:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_d

    :goto_32
    :try_start_33
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_VENDOR_ID_IND:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_c

    :goto_33
    :try_start_34
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_VIDEO_RX_OLC_CLOSED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_b

    :goto_34
    :try_start_35
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_VIDEO_RX_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_a

    :goto_35
    :try_start_36
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_VIDEO_TX_OLC_CLOSED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_9

    :goto_36
    :try_start_37
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_VIDEO_TX_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_8

    :goto_37
    :try_start_38
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_RETRY_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_7

    :goto_38
    :try_start_39
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_6

    :goto_39
    :try_start_3a
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_5

    :goto_3a
    :try_start_3b
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_DECODE_JPEG_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_4

    :goto_3b
    :try_start_3c
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_FIRST_FRAME_FROM_CAMERA:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3

    :goto_3c
    :try_start_3d
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_SURFACE_INIT_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_2

    :goto_3d
    :try_start_3e
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_USER_INDICATION:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_1

    :goto_3e
    :try_start_3f
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_VMS_MODE:Lsiso/vt/VTManager$VTEventForUI;

    invoke-virtual {v1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_0

    :goto_3f
    sput-object v0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->-siso-vt-VTManager$VTEventForUISwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3f

    :catch_1
    move-exception v1

    goto :goto_3e

    :catch_2
    move-exception v1

    goto :goto_3d

    :catch_3
    move-exception v1

    goto :goto_3c

    :catch_4
    move-exception v1

    goto :goto_3b

    :catch_5
    move-exception v1

    goto :goto_3a

    :catch_6
    move-exception v1

    goto :goto_39

    :catch_7
    move-exception v1

    goto :goto_38

    :catch_8
    move-exception v1

    goto :goto_37

    :catch_9
    move-exception v1

    goto :goto_36

    :catch_a
    move-exception v1

    goto :goto_35

    :catch_b
    move-exception v1

    goto/16 :goto_34

    :catch_c
    move-exception v1

    goto/16 :goto_33

    :catch_d
    move-exception v1

    goto/16 :goto_32

    :catch_e
    move-exception v1

    goto/16 :goto_31

    :catch_f
    move-exception v1

    goto/16 :goto_30

    :catch_10
    move-exception v1

    goto/16 :goto_2f

    :catch_11
    move-exception v1

    goto/16 :goto_2e

    :catch_12
    move-exception v1

    goto/16 :goto_2d

    :catch_13
    move-exception v1

    goto/16 :goto_2c

    :catch_14
    move-exception v1

    goto/16 :goto_2b

    :catch_15
    move-exception v1

    goto/16 :goto_2a

    :catch_16
    move-exception v1

    goto/16 :goto_29

    :catch_17
    move-exception v1

    goto/16 :goto_28

    :catch_18
    move-exception v1

    goto/16 :goto_27

    :catch_19
    move-exception v1

    goto/16 :goto_26

    :catch_1a
    move-exception v1

    goto/16 :goto_25

    :catch_1b
    move-exception v1

    goto/16 :goto_24

    :catch_1c
    move-exception v1

    goto/16 :goto_23

    :catch_1d
    move-exception v1

    goto/16 :goto_22

    :catch_1e
    move-exception v1

    goto/16 :goto_21

    :catch_1f
    move-exception v1

    goto/16 :goto_20

    :catch_20
    move-exception v1

    goto/16 :goto_1f

    :catch_21
    move-exception v1

    goto/16 :goto_1e

    :catch_22
    move-exception v1

    goto/16 :goto_1d

    :catch_23
    move-exception v1

    goto/16 :goto_1c

    :catch_24
    move-exception v1

    goto/16 :goto_1b

    :catch_25
    move-exception v1

    goto/16 :goto_1a

    :catch_26
    move-exception v1

    goto/16 :goto_19

    :catch_27
    move-exception v1

    goto/16 :goto_18

    :catch_28
    move-exception v1

    goto/16 :goto_17

    :catch_29
    move-exception v1

    goto/16 :goto_16

    :catch_2a
    move-exception v1

    goto/16 :goto_15

    :catch_2b
    move-exception v1

    goto/16 :goto_14

    :catch_2c
    move-exception v1

    goto/16 :goto_13

    :catch_2d
    move-exception v1

    goto/16 :goto_12

    :catch_2e
    move-exception v1

    goto/16 :goto_11

    :catch_2f
    move-exception v1

    goto/16 :goto_10

    :catch_30
    move-exception v1

    goto/16 :goto_f

    :catch_31
    move-exception v1

    goto/16 :goto_e

    :catch_32
    move-exception v1

    goto/16 :goto_d

    :catch_33
    move-exception v1

    goto/16 :goto_c

    :catch_34
    move-exception v1

    goto/16 :goto_b

    :catch_35
    move-exception v1

    goto/16 :goto_a

    :catch_36
    move-exception v1

    goto/16 :goto_9

    :catch_37
    move-exception v1

    goto/16 :goto_8

    :catch_38
    move-exception v1

    goto/16 :goto_7

    :catch_39
    move-exception v1

    goto/16 :goto_6

    :catch_3a
    move-exception v1

    goto/16 :goto_5

    :catch_3b
    move-exception v1

    goto/16 :goto_4

    :catch_3c
    move-exception v1

    goto/16 :goto_3

    :catch_3d
    move-exception v1

    goto/16 :goto_2

    :catch_3e
    move-exception v1

    goto/16 :goto_1

    :catch_3f
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/android/services/telephony/vt/CSVideoProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->this$0:Lcom/android/services/telephony/vt/CSVideoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lsiso/vt/VTManager$VTEventForUI;Lsiso/vt/VideoTelephonyData;)V
    .locals 8

    const-string/jumbo v5, "CSVideoProvider-Listener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onStateChanged - state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->-getsiso-vt-VTManager$VTEventForUISwitchesValues()[I

    move-result-object v5

    invoke-virtual {p1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_0
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->mCallback:Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;

    if-eqz v5, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "event"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "session_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->mCallback:Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;

    invoke-virtual {v5, v3}, Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;->onProviderCallbackReceived(Landroid/os/Bundle;)V

    :cond_0
    return-void

    :pswitch_0
    const/16 v0, 0xc9

    const/4 v1, 0x2

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xca

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xcb

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xcc

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xcd

    iget-object v5, p0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->this$0:Lcom/android/services/telephony/vt/CSVideoProvider;

    invoke-static {v5}, Lcom/android/services/telephony/vt/CSVideoProvider;->-wrap1(Lcom/android/services/telephony/vt/CSVideoProvider;)V

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xce

    iget-object v5, p0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->this$0:Lcom/android/services/telephony/vt/CSVideoProvider;

    invoke-virtual {v5}, Lcom/android/services/telephony/vt/CSVideoProvider;->stopService()V

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xcf

    iget-object v5, p0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->this$0:Lcom/android/services/telephony/vt/CSVideoProvider;

    invoke-static {v5}, Lcom/android/services/telephony/vt/CSVideoProvider;->-wrap0(Lcom/android/services/telephony/vt/CSVideoProvider;)V

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xd0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/services/utils/SecTelecomAdapter;->hangupFgCall()V

    iget-object v5, p0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->this$0:Lcom/android/services/telephony/vt/CSVideoProvider;

    invoke-virtual {v5}, Lcom/android/services/telephony/vt/CSVideoProvider;->stopService()V

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xd1

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xd4

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xd5

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xd2

    goto :goto_0

    :pswitch_c
    const/16 v0, 0xd2

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x191

    const/16 v1, 0x7d1

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x192

    const/16 v1, 0x7d2

    iget-object v5, p0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->this$0:Lcom/android/services/telephony/vt/CSVideoProvider;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/services/telephony/vt/CSVideoProvider;->-set0(Lcom/android/services/telephony/vt/CSVideoProvider;Z)Z

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x193

    const/16 v1, 0x7d3

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->this$0:Lcom/android/services/telephony/vt/CSVideoProvider;

    invoke-virtual {v5}, Lcom/android/services/telephony/vt/CSVideoProvider;->stopRecord()V

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x194

    const/16 v1, 0x7d4

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->this$0:Lcom/android/services/telephony/vt/CSVideoProvider;

    invoke-virtual {v5}, Lcom/android/services/telephony/vt/CSVideoProvider;->stopRecord()V

    goto/16 :goto_0

    :pswitch_11
    const/16 v0, 0x194

    goto/16 :goto_0

    :pswitch_12
    const/16 v0, 0x1f5

    goto/16 :goto_0

    :pswitch_13
    const/16 v0, 0x1f6

    goto/16 :goto_0

    :pswitch_14
    const/16 v0, 0x1f7

    goto/16 :goto_0

    :pswitch_15
    const/16 v0, 0x1f8

    goto/16 :goto_0

    :pswitch_16
    const/16 v0, 0x259

    goto/16 :goto_0

    :pswitch_17
    const/16 v0, 0x25a

    goto/16 :goto_0

    :pswitch_18
    const/16 v0, 0x25b

    goto/16 :goto_0

    :pswitch_19
    const/16 v0, 0x25c

    goto/16 :goto_0

    :pswitch_1a
    const/16 v0, 0x25d

    goto/16 :goto_0

    :pswitch_1b
    const/16 v0, 0x25e

    goto/16 :goto_0

    :pswitch_1c
    const/16 v0, 0x25f

    goto/16 :goto_0

    :pswitch_1d
    const/16 v0, 0x260

    goto/16 :goto_0

    :pswitch_1e
    const/16 v0, 0x65

    const/4 v1, 0x3

    const/4 v2, 0x1

    goto/16 :goto_0

    :pswitch_1f
    const/16 v0, 0x66

    goto/16 :goto_0

    :pswitch_20
    const/16 v0, 0x67

    const/4 v1, 0x5

    const/4 v2, 0x1

    goto/16 :goto_0

    :pswitch_21
    const/16 v0, 0x68

    const/4 v1, 0x6

    const/4 v2, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1d
        :pswitch_18
        :pswitch_17
        :pswitch_19
        :pswitch_16
        :pswitch_1a
        :pswitch_1c
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_14
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_1f
        :pswitch_20
        :pswitch_1e
        :pswitch_21
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public registerCallback(Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;)V
    .locals 3

    const-string/jumbo v0, "CSVideoProvider-Listener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallback : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-object p1, p0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->mCallback:Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;

    return-void
.end method

.method public unRegisterCallback()V
    .locals 3

    const-string/jumbo v0, "CSVideoProvider-Listener"

    const-string/jumbo v1, "unRegisterCallback "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->mCallback:Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;

    return-void
.end method
