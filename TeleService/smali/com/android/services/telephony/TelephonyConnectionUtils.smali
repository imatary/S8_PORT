.class public Lcom/android/services/telephony/TelephonyConnectionUtils;
.super Ljava/lang/Object;
.source "TelephonyConnectionUtils.java"


# static fields
.field private static SERVICE_TYPE_MODIFIED_CALL:I

.field private static mCallHoldPlayer:Landroid/media/MediaPlayer;

.field private static mCntConfFromDisconnectingToActive:I

.field private static mIsSrvccConfCall:Z

.field private static mOutgoingCSVideoCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    sput-boolean v1, Lcom/android/services/telephony/TelephonyConnectionUtils;->mOutgoingCSVideoCall:Z

    sput-boolean v1, Lcom/android/services/telephony/TelephonyConnectionUtils;->mIsSrvccConfCall:Z

    sput v1, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCntConfFromDisconnectingToActive:I

    const/16 v0, 0x1f

    sput v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->SERVICE_TYPE_MODIFIED_CALL:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyOperatorCapabilities(ILcom/android/services/telephony/TelephonyConnection;)I
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v3, p0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsIMS;->isSessionModifyPossible(Lcom/android/services/telephony/TelephonyConnection;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    const/16 v5, 0xc9

    invoke-static {v5}, Lcom/android/phone/TelephonyConfig;->hasFeature(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "TelephonyConnectionUtils"

    const-string/jumbo v6, "applyOperatorCapabilities - disable modify by operator\'s request"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_0
    const-string/jumbo v5, "feature_vzw"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    const-string/jumbo v5, "mtconference"

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TelephonyConnectionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "applyOperatorCapabilities - call type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mtconference : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v5, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    const/high16 v5, 0x10000000

    or-int v3, p0, v5

    :cond_2
    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isAvailableAddUser(Lcom/android/services/telephony/TelephonyConnection;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v5, 0x8000000

    or-int/2addr v3, v5

    :cond_3
    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isAvailableManagerConference(Lcom/android/services/telephony/TelephonyConnection;)Z

    move-result v5

    if-eqz v5, :cond_4

    or-int/lit16 v3, v3, 0x80

    :cond_4
    return v3
.end method

.method public static checkAdditionalFailedState(Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)I
    .locals 1

    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isCSVTRequest(Landroid/telecom/ConnectionRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->is2GNetwork(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static checkAndUpdate(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 19

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    if-nez v9, :cond_1

    return-void

    :cond_1
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnectionState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v2

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v12

    const/4 v7, 0x0

    if-eqz v2, :cond_20

    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v14, :cond_3

    const-string/jumbo v14, "tmo_volte_ui"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_22

    sget-object v14, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v14, :cond_22

    :cond_3
    :goto_0
    invoke-static {v1, v12}, Lcom/android/services/telephony/TelephonyConnectionUtils;->ttyNotification(Lcom/android/internal/telephony/Call;Lcom/android/services/telephony/common/SecCallExtra;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v7, 0x1

    :cond_4
    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v14, :cond_5

    sget-object v14, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v14, :cond_5

    const/4 v7, 0x1

    :cond_5
    if-eqz v12, :cond_6

    invoke-static {v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getSessionId(Lcom/android/internal/telephony/CallDetails;)I

    move-result v14

    invoke-virtual {v12}, Lcom/android/services/telephony/common/SecCallExtra;->getSessionId()I

    move-result v15

    if-eq v14, v15, :cond_6

    const/4 v7, 0x1

    :cond_6
    if-eqz v12, :cond_9

    iget v14, v2, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v12}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v15

    if-eq v14, v15, :cond_9

    const-string/jumbo v14, "concept_kor_common"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    invoke-static {v12, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->saveModifiedCallLog(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v12

    :cond_7
    if-nez v7, :cond_8

    if-eqz v12, :cond_8

    const/4 v7, 0x1

    :cond_8
    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->notifyConferenceController()V

    :cond_9
    const-string/jumbo v14, "true"

    const-string/jumbo v15, "isGroupCall"

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    invoke-static {v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isIMSVideoConferenceCall(Lcom/android/internal/telephony/CallDetails;)Z

    move-result v14

    if-eqz v14, :cond_23

    :cond_a
    const-string/jumbo v14, "TelephonyConnectionUtils"

    const-string/jumbo v15, "checkAndUpdate .updateIMSConferencCallMgr "

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p0 .. p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateIMSConferencCallMgr(Lcom/android/services/telephony/TelephonyConnection;)V

    if-nez v7, :cond_b

    if-eqz v12, :cond_b

    const/4 v7, 0x1

    :cond_b
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConnection;->mPreviousConnectionState:Lcom/android/internal/telephony/Call$State;

    sget-object v15, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_c

    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v14, :cond_c

    if-nez v7, :cond_c

    if-eqz v12, :cond_c

    const-string/jumbo v14, "TelephonyConnectionUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " mPreviousConnectionState : DISCONNECTING , newState :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {v14 .. v16}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x1

    :cond_c
    sget-object v14, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v14, :cond_d

    invoke-static {}, Lcom/android/phone/PhoneUtils;->hasConferenceCall()Z

    move-result v14

    if-eqz v14, :cond_d

    if-eqz v12, :cond_d

    iget v14, v2, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v12}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v15

    if-eq v14, v15, :cond_d

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->notifyConferenceController()V

    if-nez v7, :cond_d

    if-eqz v12, :cond_d

    const/4 v7, 0x1

    :cond_d
    if-eqz v12, :cond_f

    const/4 v5, 0x0

    const-string/jumbo v14, "feature_cmcc"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_24

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v14

    const-string/jumbo v15, "mtconference"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_e
    :goto_2
    const-string/jumbo v14, "TelephonyConnectionUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "secCallExtra.isVolteConference() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Lcom/android/services/telephony/common/SecCallExtra;->isVolteConference()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " mtconference : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {v14 .. v16}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v7, :cond_f

    invoke-virtual {v12}, Lcom/android/services/telephony/common/SecCallExtra;->isVolteConference()Z

    move-result v14

    const-string/jumbo v15, "true"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eq v14, v15, :cond_f

    const/4 v7, 0x1

    :cond_f
    const-string/jumbo v14, "call_details_for_hd_icon"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    if-eqz v12, :cond_10

    invoke-static {v9}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getHdIcon(Lcom/android/internal/telephony/Connection;)I

    move-result v4

    invoke-virtual {v12}, Lcom/android/services/telephony/common/SecCallExtra;->getHDIcon()I

    move-result v14

    if-eq v4, v14, :cond_10

    if-nez v7, :cond_10

    if-eqz v12, :cond_10

    const/4 v7, 0x1

    :cond_10
    const-string/jumbo v14, "feature_dcm"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_12

    const-string/jumbo v14, "feature_tmo"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_11

    const-string/jumbo v14, "feature_spr"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    :cond_11
    iget v14, v2, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_13

    :cond_12
    if-eqz v12, :cond_13

    invoke-static {v9}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getAudioCodec(Lcom/android/internal/telephony/Connection;)I

    move-result v4

    invoke-virtual {v12}, Lcom/android/services/telephony/common/SecCallExtra;->getHDIcon()I

    move-result v14

    if-eq v4, v14, :cond_13

    if-nez v7, :cond_13

    if-eqz v12, :cond_13

    const/4 v7, 0x1

    :cond_13
    iget v14, v2, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_14

    if-nez v7, :cond_14

    if-eqz v12, :cond_14

    invoke-virtual {v12}, Lcom/android/services/telephony/common/SecCallExtra;->getVideoResolution()I

    move-result v14

    invoke-static {v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getSecVideoResolution(Lcom/android/internal/telephony/CallDetails;)I

    move-result v15

    if-eq v14, v15, :cond_14

    const/4 v7, 0x1

    :cond_14
    iget v14, v2, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v14, :cond_17

    if-eqz v12, :cond_17

    iget v14, v2, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_25

    invoke-virtual {v12}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_25

    :goto_3
    invoke-virtual {v12}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_15

    const-string/jumbo v14, "tmo_volte_ui"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_26

    const v14, 0x7f0d0646

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->displayLongToast(I)V

    :cond_15
    :goto_4
    invoke-static {v12, v9}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v12

    const/4 v7, 0x0

    const-string/jumbo v14, "TelephonyConnectionUtils"

    const-string/jumbo v15, "updateSecCallExtra for srvcc"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v14, "support_hide_conference_manager_menu_srvcc"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    const/4 v14, 0x1

    invoke-static {v14}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setSrvccConfCall(Z)V

    :cond_16
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v12}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    :cond_17
    const-string/jumbo v14, "radiotech"

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v14, "epdg"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    const-string/jumbo v14, "vowifi"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    if-eqz v12, :cond_19

    invoke-virtual {v12}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v14

    if-eqz v14, :cond_19

    const-string/jumbo v14, "lte"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    :cond_18
    if-eqz v12, :cond_19

    invoke-static {v12, v9}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v12

    const/4 v7, 0x0

    const-string/jumbo v14, "TelephonyConnectionUtils"

    const-string/jumbo v15, "updateSecCallExtra for epdg or vowifi"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v12}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    :cond_19
    const-string/jumbo v14, "jansky_info_for_tmo"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1b

    if-nez v7, :cond_1b

    if-eqz v12, :cond_1b

    const-string/jumbo v14, "linemsisdn"

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1b

    sget-object v14, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v14, :cond_1a

    sget-object v14, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v14, :cond_1b

    :cond_1a
    const-string/jumbo v14, "TelephonyConnectionUtils"

    const-string/jumbo v15, "updateSecCallExtra for linemsisdn"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x1

    :cond_1b
    const-string/jumbo v14, "ims_support_multimedia_caller_id"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConnection;->mPreviousConnectionState:Lcom/android/internal/telephony/Call$State;

    sget-object v15, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v14, v15, :cond_1c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConnection;->mPreviousConnectionState:Lcom/android/internal/telephony/Call$State;

    sget-object v15, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_1e

    :cond_1c
    const-string/jumbo v14, "TelephonyConnectionUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "call state changed from : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection;->mPreviousConnectionState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "key_photoring_mt_content_url"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConnection;->mPreviousConnectionState:Lcom/android/internal/telephony/Call$State;

    sget-object v15, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_1d

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v13

    :cond_1d
    const-string/jumbo v14, "TelephonyConnectionUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "content url : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v12, :cond_1e

    invoke-virtual {v12, v13}, Lcom/android/services/telephony/common/SecCallExtra;->setPhotoringContentUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "key_photoring_mt_content_url"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v7, 0x1

    :cond_1e
    if-eqz v7, :cond_1f

    invoke-static {v12, v9}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v12

    if-eqz v12, :cond_27

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v12}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    :cond_1f
    :goto_5
    const-string/jumbo v14, "TelephonyConnectionUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "checkAndUpdate : state["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "] callType["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v2, Lcom/android/internal/telephony/CallDetails;->call_type:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "] domain["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v2, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {v14 .. v16}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    if-eqz v12, :cond_21

    invoke-virtual {v12}, Lcom/android/services/telephony/common/SecCallExtra;->getHasBeenVideoCall()Z

    move-result v14

    if-eqz v14, :cond_28

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/services/telephony/TelephonyConnection;->setHasBeenVideoCall(Z)V

    const-string/jumbo v14, "TelephonyConnectionUtils"

    const-string/jumbo v15, "setHasBeenVideoCall is set for capability"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    const-string/jumbo v14, "TelephonyConnectionUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "checkAndUpdate : Updated["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {v14 .. v16}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_22
    const-string/jumbo v14, "ims_voice_conference_kddi"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    sget-object v14, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v14, :cond_c

    goto/16 :goto_0

    :cond_23
    const-string/jumbo v14, "feature_lgt"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    const-string/jumbo v6, "conferror"

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateIMSConferencCallMgr(Lcom/android/services/telephony/TelephonyConnection;)V

    goto/16 :goto_1

    :cond_24
    const-string/jumbo v14, "mtconference"

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_25
    iget v14, v2, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_17

    invoke-virtual {v12}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_17

    goto/16 :goto_3

    :cond_26
    const-string/jumbo v14, "feature_dcm"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    const v14, 0x7f0d0937

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->displayLongToast(I)V

    goto/16 :goto_4

    :cond_27
    const-string/jumbo v14, "TelephonyConnectionUtils"

    const-string/jumbo v15, "could not update secCallextra"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_28
    const/4 v14, 0x0

    goto/16 :goto_6
.end method

.method public static createDisconnecCausetReason(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return-object v2

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getSipErrorCode()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public static createFailedConnectionForPhoneIsNull()Landroid/telecom/Connection;
    .locals 2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/TeleServiceSystemDB;->isAirplainModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ServiceState.STATE_POWER_OFF"

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->createFailedConnectionForPhoneIsNull()Landroid/telecom/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/telecom/ConnectionRequest;)Lcom/android/internal/telephony/Connection;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v19

    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v7, 0x3

    :cond_0
    invoke-virtual/range {v19 .. v19}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v8, 0x2

    :cond_1
    const/4 v9, 0x0

    const-string/jumbo v2, "ims_voice_conference_kddi"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/android/services/telephony/common/SecCallExtra;->isIMSConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "participants=unknown"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v9, v3

    :cond_2
    :goto_0
    :try_start_0
    const-string/jumbo v2, "TelephonyConnectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DoDial CallType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "CallDomain : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v14

    if-eqz v14, :cond_3

    const/4 v2, 0x3

    if-ne v7, v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/Connection;->setVideoState(I)V

    :cond_3
    const-string/jumbo v2, "jansky_info_for_tmo"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Lcom/android/services/telephony/common/SecCallExtra;->getLineMSISDN()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual/range {v19 .. v19}, Lcom/android/services/telephony/common/SecCallExtra;->isVirtualLine()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    if-ne v8, v2, :cond_4

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual/range {v19 .. v19}, Lcom/android/services/telephony/common/SecCallExtra;->getLineMSISDN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_10

    :cond_4
    :goto_1
    return-object v14

    :cond_5
    const-string/jumbo v2, "video_conference"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "ims_voice_conference"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "ims_voice_conference_vzw"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isOutngoingConfCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "participants=unknown"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v9, v3

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "jansky_info_for_tmo"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/services/telephony/operator/usa/JanskyCallerInfo;->isEnableNsdsServiceStatus()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v19, :cond_a

    invoke-virtual/range {v19 .. v19}, Lcom/android/services/telephony/common/SecCallExtra;->getLineMSISDN()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual/range {v19 .. v19}, Lcom/android/services/telephony/common/SecCallExtra;->isVirtualLine()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {v19 .. v19}, Lcom/android/services/telephony/common/SecCallExtra;->getLineMSISDN()Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x1

    if-ne v8, v2, :cond_9

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/operator/usa/JanskyCallerInfo;->getTRN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_8

    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "virtualline="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v9, v3

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v9, v3

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "virtualline="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v9, v3

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "virtualline="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v9, v3

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "ims_support_multimedia_caller_id"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v12, 0x0

    if-eqz v19, :cond_b

    invoke-virtual/range {v19 .. v19}, Lcom/android/services/telephony/common/SecCallExtra;->getOutgoingCallMessage()Ljava/lang/String;

    move-result-object v12

    :cond_b
    invoke-static {}, Lcom/android/phone/photoring/PhotoRingMgr;->getInstance()Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/photoring/PhotoRingMgr;->getAlertInfo()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v18, "letter"

    const-string/jumbo v16, "="

    const-string/jumbo v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz v13, :cond_d

    if-eqz v12, :cond_c

    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v9, v3

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "alertinfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v9, v3

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "alertinfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v9, v3

    goto/16 :goto_0

    :cond_d
    if-eqz v12, :cond_2

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v9, v3

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v2, "ims_call_message"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v12, 0x0

    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Lcom/android/services/telephony/common/SecCallExtra;->getOutgoingCallMessage()Ljava/lang/String;

    move-result-object v12

    :cond_f
    const-string/jumbo v2, "TelephonyConnectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "callMessage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v12, :cond_2

    const-string/jumbo v18, "letter"

    const-string/jumbo v16, "="

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v9, v3

    const-string/jumbo v2, "TelephonyConnectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extras[0] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v9, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    :try_start_1
    const-string/jumbo v2, "linemsisdn"

    invoke-virtual {v11, v2}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "linemsisdn"

    invoke-virtual/range {v19 .. v19}, Lcom/android/services/telephony/common/SecCallExtra;->getLineMSISDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lcom/android/internal/telephony/CallDetails;->setExtraValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "TelephonyConnectionUtils"

    const-string/jumbo v3, "set callDetails msisdn"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dial, phone.dial exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v15, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v15
.end method

.method public static existPSCall()Z
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v4, "TelephonyConnectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "callDetails.call_domain : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz v1, :cond_5

    iget v4, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v4, v9, :cond_5

    const-string/jumbo v4, "TelephonyConnectionUtils"

    const-string/jumbo v5, "existPSCall true"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v8

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    return v7

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v4, "TelephonyConnectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "callDetails.call_domain : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-eqz v1, :cond_5

    iget v4, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v4, v9, :cond_5

    const-string/jumbo v4, "TelephonyConnectionUtils"

    const-string/jumbo v5, "existPSCall true"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v8

    :cond_5
    return v7
.end method

.method public static existVoLTEVoiceCall()Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return v5

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTECall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "TelephonyConnectionUtils"

    const-string/jumbo v3, "existVoLTEVoiceCall false"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_3
    const-string/jumbo v2, "TelephonyConnectionUtils"

    const-string/jumbo v3, "existVoLTEVoiceCall true"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    return v2
.end method

.method private static getAudioCodec(Lcom/android/internal/telephony/Connection;)I
    .locals 8

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v3, "audio_codec"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "EVS-NB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const-string/jumbo v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAudioCodec - audio_codec : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v0

    :cond_2
    const-string/jumbo v3, "AMR-NB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "AMR-WB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "EVS-WB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "EVS-SWB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v0, 0x8

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "EVS-FB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCallForHoldTone()Lcom/android/internal/telephony/Call;
    .locals 5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "TelephonyConnectionUtils"

    const-string/jumbo v3, "no foreground call"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string/jumbo v2, "TelephonyConnectionUtils"

    const-string/jumbo v3, "getCallerName()"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TelephonyConnectionUtils"

    const-string/jumbo v3, "getCallerName() : number is null"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "display_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    :goto_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez v8, :cond_3

    move-object v8, p0

    :cond_3
    return-object v8

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v2, "TelephonyConnectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCallerName() : Exception !!! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_4
    const/4 v1, 0x0

    const/4 v0, 0x0

    throw v2
.end method

.method public static getCntConfFromDisconnectingToActive()I
    .locals 1

    sget v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCntConfFromDisconnectingToActive:I

    return v0
.end method

.method public static getCodec4test(I)I
    .locals 2

    const-string/jumbo v0, "AMR-WB"

    const-string/jumbo v1, "call.test.audio_codec"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const-string/jumbo v0, "EVS-SWB"

    const-string/jumbo v1, "call.test.audio_codec"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    return p0
.end method

.method public static getEcholocateCallCode(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    const-string/jumbo v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getEcholocateCallCode getDisconnectCause "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getEcholocateCallCode getSipErrorCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getSipErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v3, :cond_0

    move-object v2, p0

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v2, :cond_0

    const-string/jumbo v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getEcholocateCallCode getRawDisconnectCause "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getRawDisconnectCause()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getEcholocateCallCode getCallFailCause "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCallFailCause()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    packed-switch v1, :pswitch_data_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCallFailCause()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v3, "0"

    return-object v3

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getSipErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_1
    const-string/jumbo v3, "RTP Timeout"

    return-object v3

    :sswitch_0
    const-string/jumbo v3, "65535"

    return-object v3

    :sswitch_1
    const-string/jumbo v3, "16"

    return-object v3

    :cond_1
    const-string/jumbo v3, "NA"

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0xa8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x579
        :pswitch_1
    .end packed-switch
.end method

.method private static getHdIcon(Lcom/android/internal/telephony/Connection;)I
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "hdicon"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getHdIcon - hdIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string/jumbo v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getHdIcon - showHDIcon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private static getNetworkName()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x0

    return-object v3

    :pswitch_1
    const-string/jumbo v3, "2G"

    return-object v3

    :pswitch_2
    const-string/jumbo v3, "3G"

    return-object v3

    :pswitch_3
    const-string/jumbo v3, "LTE"

    return-object v3

    :pswitch_4
    const-string/jumbo v3, "WLAN"

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getOriginalConnectionByNumber(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 11

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const-string/jumbo v5, "TelephonyConnectionUtils"

    const-string/jumbo v6, "getOriginalConnectionByNumber cm or number is null"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v9

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v9
.end method

.method private static getRadioTech(Lcom/android/services/telephony/TelephonyConnection;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallRadioTech()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TelephonyConnectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRadioTech - getCallRadioTech : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public static getSecVideoResolution(Lcom/android/internal/telephony/CallDetails;)I
    .locals 7

    const/4 v5, 0x1

    const-string/jumbo v2, "resolution"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v2, v5, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v2, "TelephonyConnectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSecVideoResolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    if-eqz v0, :cond_a

    const-string/jumbo v2, "qcif"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    const-string/jumbo v2, "common_volte_in"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "qvga"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isQvgaLandVideoCall()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x7

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "hd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isLGTGroupCall(Lcom/android/internal/telephony/CallDetails;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x4

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "hd_land"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x4

    goto :goto_0

    :cond_7
    const-string/jumbo v2, "cif"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x5

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "hd720"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x6

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "qvga_land"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "concept_usa_att"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isDeviceOn3G()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static getSessionId(Lcom/android/internal/telephony/CallDetails;)I
    .locals 6

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return v5

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v2, "sessionId"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TelephonyConnectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSessionId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    const-string/jumbo v2, "TelephonyConnectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSessionId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v1
.end method

.method public static getTelephonyConnection(Ljava/lang/String;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "TelephonyConnectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTelephonyConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Ljava/lang/String;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v4
.end method

.method public static hasRingingVideoCallWithMultipartyCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_2

    iget v4, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    iget v4, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    move v4, v5

    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string/jumbo v4, "TelephonyConnectionUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hasRingingVideoCallWithMultipartyCall "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v6

    invoke-static {v4, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_1
.end method

.method private static is2GNetwork(Lcom/android/internal/telephony/Phone;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const-string/jumbo v1, "TelephonyConnectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Currently connected network Tech. type is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v0, v5, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    return v5

    :cond_1
    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    return v4
.end method

.method public static isAutoRejectCall(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isAutoRejectCall()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isAvailableAddUser(Lcom/android/services/telephony/TelephonyConnection;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v4, "TelephonyConnectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAvailableAddUser - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    const-string/jumbo v4, "video_conference"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "ims_voice_conference"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-static {v3}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isIMSConfCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    const-string/jumbo v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "TelephonyConnectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAvailableAddUser() toCallType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallDetails;->toCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallDetails;->toCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-eq v4, v5, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallDetails;->toCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne v4, v5, :cond_5

    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallDetails;->toCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "feature_skt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "skt_conf_support"

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static isAvailableManagerConference(Lcom/android/services/telephony/TelephonyConnection;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    const-string/jumbo v1, "ims_voice_conference_vzw"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isIMSConfCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "TelephonyConnectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAvailableManagerConference - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static isCSVTRequest(Landroid/telecom/ConnectionRequest;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    sput-boolean v5, Lcom/android/services/telephony/TelephonyConnectionUtils;->mOutgoingCSVideoCall:Z

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 v0, 0x1

    invoke-static {v4}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setIsOutgoingCSVideoCall(Z)V

    :cond_0
    const-string/jumbo v2, "TelephonyConnectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCSVTRequest : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static isCdmaSubscriptionNv(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_0

    return v6

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "subscription_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "E"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    if-ne v0, v7, :cond_1

    return v7

    :cond_1
    return v6
.end method

.method public static isCshRunning(Landroid/content/Context;)Z
    .locals 6

    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ComponentInfo{com.samsung.rcs/com.samsung.rcs.share.ContentShareActivity}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ComponentInfo{com.samsung.crane/com.samsung.crane.sketchimage.SketchActivity}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ComponentInfo{com.samsung.crane/com.samsung.crane.sketchmap.MapActivity}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ComponentInfo{com.samsung.crane/com.samsung.crane.contentshare.ShareActivity}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isDeviceOn3G()Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const-string/jumbo v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDeviceOn3G() type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    return v3

    :cond_1
    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0xf

    if-eq v2, v3, :cond_0

    return v6
.end method

.method public static isEpdgCall(Lcom/android/services/telephony/TelephonyConnection;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v1

    return v1

    :cond_1
    return v3
.end method

.method public static isIMSVideoConferenceCall(Lcom/android/internal/telephony/CallDetails;)Z
    .locals 2

    const-string/jumbo v0, "video_conference"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallDetails;->toCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isImsCall(Landroid/telecom/ConnectionRequest;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isImsCall(Lcom/android/services/telephony/common/SecCallExtra;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isImsCall(Lcom/android/services/telephony/common/SecCallExtra;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isLGTGroupCall(Lcom/android/internal/telephony/CallDetails;)Z
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    return v5

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_5

    :cond_2
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_6

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallDetails;->toCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v5, v6, :cond_4

    const-string/jumbo v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const/4 v4, 0x1

    :cond_4
    return v4

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isLowBatt()Z
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "TelephonyConnectionUtils"

    const-string/jumbo v2, "isLowBatt error!  secAdapter is null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->isLowBatt()Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    :cond_1
    return v5
.end method

.method public static isMacauOperator()Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "hk_local_ringback_tone"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v6

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    const/4 v3, 0x3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v0, 0x0

    const-string/jumbo v3, "455"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    const-string/jumbo v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isMacauOperator : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static isNetworkRadioTech(Lcom/android/services/telephony/TelephonyConnection;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getRadioTech(Lcom/android/services/telephony/TelephonyConnection;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    const-string/jumbo v1, "epdg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isNoSim()Z
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOutgoingCSVideoCall()Z
    .locals 1

    sget-boolean v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mOutgoingCSVideoCall:Z

    return v0
.end method

.method public static isOutngoingConfCall(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v1, "\\$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isQvgaLandVideoCall()Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    return v4

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSrvccConfCall()Z
    .locals 1

    sget-boolean v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mIsSrvccConfCall:Z

    return v0
.end method

.method public static isTWAPT()Z
    .locals 4

    const/4 v3, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v2, "46605"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isTWTWM()Z
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    const-string/jumbo v2, "common_volte_tw"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string/jumbo v2, "46697"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static isTtyType(Lcom/android/internal/telephony/Call;)Z
    .locals 2

    const-string/jumbo v0, "TTY_OFF"

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isTtyType(Lcom/android/internal/telephony/Call;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isTtyType(Lcom/android/internal/telephony/Call;ILjava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_tty_mode"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "ttytype"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTtyType - preferredTtyMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / callDetailsTtyType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    if-ne p1, v2, :cond_0

    const-string/jumbo v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v8

    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "TelephonyConnectionUtils"

    const-string/jumbo v4, "isTtyType and return"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7
.end method

.method public static isVodafoneIT()Z
    .locals 4

    const/4 v3, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v2, "22210"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isVoiceCall(Landroid/telecom/ConnectionRequest;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isVoiceCall(Lcom/android/services/telephony/common/SecCallExtra;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isVoiceCall(Lcom/android/services/telephony/common/SecCallExtra;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static makeIncomingConnection(Landroid/telecom/Connection;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 3

    move-object v0, p0

    invoke-virtual {p1}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telecom/Connection;->setVideoState(I)V

    :cond_0
    return-object p0
.end method

.method public static makeIncomingSecCallExtra(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Landroid/os/Bundle;
    .locals 7

    const/4 v6, 0x1

    invoke-static {p0, p1}, Lcom/android/services/utils/AutoRejectUtils;->getAutoRejectBundleExtra(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v2}, Lcom/android/services/telephony/common/SecCallExtra;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "TelephonyConnectionUtils"

    const-string/jumbo v4, "this is waiting call, add secExtra"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Lcom/android/services/telephony/common/SecCallExtra;->setWaitingCall(Z)V

    :cond_1
    invoke-virtual {v2, v6}, Lcom/android/services/telephony/common/SecCallExtra;->setReceivedCall(Z)V

    invoke-static {v2, p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v3

    return-object v3
.end method

.method private static notifyConferenceController()V
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnectionService;->recalculateConference()V

    :cond_0
    return-void
.end method

.method public static notifyEccCallStateChanged(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v1, "TelephonyConnectionUtils"

    const-string/jumbo v2, "notifyEccCallStateChanged"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    const-string/jumbo v1, "TelephonyConnectionUtils"

    const-string/jumbo v2, "notifyEccCallStateChanged  connection is null"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "TelephonyConnectionUtils"

    const-string/jumbo v2, "notifyEccCallStateChanged error!  secExtra is null"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/services/telephony/common/SecCallExtra;->setUpdateEmerencyCallState(Z)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    return-void
.end method

.method public static onLineCtrlEvent(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v2, "TelephonyConnectionUtils"

    const-string/jumbo v3, "onLineCtrlEvent"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v0}, Lcom/android/services/telephony/common/SecCallExtra;-><init>()V

    :cond_0
    invoke-virtual {v0, v7}, Lcom/android/services/telephony/common/SecCallExtra;->setLineCtrl(Z)V

    invoke-virtual {v1, p0, v0}, Lcom/android/services/utils/SecTelecomAdapter;->onLineCtrlEvent(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    const-string/jumbo v2, "ctc_call_time_duration"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "call_answer_vib"

    invoke-static {v2, v3}, Lcom/android/services/telephony/TelephonyConnectionUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static playCallHoldTone()V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v0, "canada_bmc_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "45006"

    const-string/jumbo v1, "gsm.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getCallForHoldTone()Lcom/android/internal/telephony/Call;

    move-result-object v7

    const-string/jumbo v0, "TelephonyConnectionUtils"

    const-string/jumbo v1, "Playing local hold call tone"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTECall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsCommon;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "TelephonyConnectionUtils"

    const-string/jumbo v1, "hold tone is ringing already"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    return-void

    :cond_4
    const-class v1, Lcom/android/services/telephony/TelephonyConnectionUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v1

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    const/4 v6, 0x0

    :try_start_1
    const-string/jumbo v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    :goto_0
    if-nez v6, :cond_8

    const-string/jumbo v0, "TelephonyConnectionUtils"

    const-string/jumbo v1, "afd is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_6

    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    :goto_1
    const/4 v6, 0x0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_7
    :try_start_3
    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v0, "TelephonyConnectionUtils"

    const-string/jumbo v1, "close failed:"

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v9, v2, v11

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    :try_start_4
    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/services/telephony/TelephonyConnectionUtils$1;

    invoke-direct {v1}, Lcom/android/services/telephony/TelephonyConnectionUtils$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_9

    :try_start_5
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_9
    :goto_2
    const/4 v6, 0x0

    :cond_a
    return-void

    :catch_1
    move-exception v9

    const-string/jumbo v0, "TelephonyConnectionUtils"

    const-string/jumbo v1, "close failed:"

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v9, v2, v11

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v8

    :try_start_6
    const-string/jumbo v0, "TelephonyConnectionUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCallHoldPlayer exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v6, :cond_9

    :try_start_7
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v9

    const-string/jumbo v0, "TelephonyConnectionUtils"

    const-string/jumbo v1, "close failed:"

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v9, v2, v11

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    if-eqz v6, :cond_b

    :try_start_8
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_b
    :goto_3
    const/4 v6, 0x0

    throw v0

    :catch_4
    move-exception v9

    const-string/jumbo v1, "TelephonyConnectionUtils"

    const-string/jumbo v2, "close failed:"

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v9, v3, v11

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public static saveModifiedCallLog(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 18

    const-string/jumbo v13, "TelephonyConnectionUtils"

    const-string/jumbo v14, "saveModifiedCallLog"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v13, v14, v15}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    const-string/jumbo v13, "TelephonyConnectionUtils"

    const-string/jumbo v14, "onModifiedCall error. secCallExtra is null"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v13, 0x0

    return-object v13

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    if-nez v11, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->getModifiedTimeMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-nez v13, :cond_6

    move-wide v2, v4

    :goto_0
    cmp-long v13, v8, v4

    if-lez v13, :cond_2

    sub-long v2, v6, v8

    :cond_2
    const-wide/16 v14, 0x3e8

    rem-long v14, v2, v14

    sub-long/2addr v6, v14

    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/services/telephony/common/SecCallExtra;->setModifiedLogType(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->getLogServiceType()I

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/services/telephony/common/SecCallExtra;->setInitModifiedLogType(I)V

    sget v13, Lcom/android/services/telephony/TelephonyConnectionUtils;->SERVICE_TYPE_MODIFIED_CALL:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/services/telephony/common/SecCallExtra;->setLogServiceType(I)V

    :cond_3
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v13, v0, v1}, Lcom/android/services/utils/SecTelecomAdapter;->setSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    :cond_4
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/services/utils/SecTelecomAdapter;->saveModifiedCallLog(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/services/telephony/common/SecCallExtra;->setModifiedTimeMillis(J)V

    return-object p0

    :cond_6
    sub-long v2, v6, v4

    goto :goto_0
.end method

.method public static saveParticipantLog(Ljava/lang/String;JJ)V
    .locals 7

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/services/utils/SecTelecomAdapter;->saveParticipantLog(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static setConfFromDisconnectingToActive(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    sput v3, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCntConfFromDisconnectingToActive:I

    :goto_0
    const-string/jumbo v0, "TelephonyConnectionUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCntConfFromDisconnectingToActive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCntConfFromDisconnectingToActive:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reset :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCntConfFromDisconnectingToActive:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCntConfFromDisconnectingToActive:I

    goto :goto_0
.end method

.method public static setConnectionCallId(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConnectionRequest;)V
    .locals 6

    const/4 v4, 0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    const-string/jumbo v1, "TelephonyConnectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setConnectionCallId. secCallExtra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getConnectionCallId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getConnectionCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/TelephonyConnection;->setCallId(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static setEcholocateCallState(ILandroid/net/Uri;ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/services/utils/SecTelecomAdapter;->setEcholocateCallState(ILandroid/net/Uri;ILjava/lang/String;)V

    return-void
.end method

.method public static setIsOutgoingCSVideoCall(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mOutgoingCSVideoCall:Z

    return-void
.end method

.method public static setSecCallExtraFromCallDetails(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2, v1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/android/services/utils/SecTelecomAdapter;->setSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    :cond_1
    return-void
.end method

.method public static setSecCallExtraToConnectionExtras(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConnectionRequest;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "doNotUpdate"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public static setSrvccConfCall(Z)V
    .locals 5

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mIsSrvccConfCall:Z

    if-eq v0, p0, :cond_0

    sput-boolean p0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mIsSrvccConfCall:Z

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->notifyConferenceController()V

    :cond_0
    const-string/jumbo v0, "TelephonyConnectionUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSrvccConfCall mIsSrvccConfCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/services/telephony/TelephonyConnectionUtils;->mIsSrvccConfCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, "call_answer_vib"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "call_end_vib"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ge v1, v6, :cond_2

    return v5

    :cond_1
    const-string/jumbo v2, "TelephonyConnectionUtils"

    const-string/jumbo v3, "startCallVibration : There are no machted type "

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_2
    if-ne v1, v6, :cond_3

    const-string/jumbo v2, "vibrator"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sget-object v2, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v3, 0xc36b

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_3
    return v6
.end method

.method public static stopCallHoldTone()V
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "TelephonyConnectionUtils"

    const-string/jumbo v2, "Stopping call holding tone"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const-string/jumbo v0, "TelephonyConnectionUtils"

    const-string/jumbo v1, "Not stopping call hold tone"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static ttyNotification(Lcom/android/internal/telephony/Call;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->ttyNotification(Lcom/android/internal/telephony/Call;Lcom/android/services/telephony/common/SecCallExtra;)Z

    move-result v0

    return v0
.end method

.method private static ttyNotification(Lcom/android/internal/telephony/Call;Lcom/android/services/telephony/common/SecCallExtra;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v1, "TelephonyConnectionUtils"

    const-string/jumbo v2, "ttyNotification()"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isTtyType(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v5}, Lcom/android/phone/TeleServiceSystemDB;->setTtyNotification(I)V

    const-string/jumbo v1, "ttytype"

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/CallDetails;->setExtraValue(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Lcom/android/services/telephony/common/SecCallExtra;->setTtyType(I)V

    :cond_0
    return v5

    :cond_1
    return v7
.end method

.method public static updateIMSCapabilities(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v3, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {}, Lcom/android/phone/ims/IMSCapabilityService;->getInstance()Lcom/android/phone/ims/IMSCapabilityService;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/ims/IMSCapabilityService;->getInstance()Lcom/android/phone/ims/IMSCapabilityService;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/ims/IMSCapabilityService;->getCapabilities(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static updateIMSConferencCallMgr(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "TelephonyConnectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIMSConferencCallMgr() State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->onConferenceDisconnect(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->onConferenceStateChanged(Lcom/android/services/telephony/TelephonyConnection;)V

    goto :goto_0
.end method

.method public static updateRecordSaveFilePath(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 9

    const/4 v8, 0x0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getRecordedCallId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "TelephonyConnectionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "- updateRecordSaveFilePath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getConnectionCallId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getConnectionCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getRecordSaveFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getRecordSaveFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    :goto_0
    return-void

    :cond_5
    return-void

    :cond_6
    const-string/jumbo v5, "TelephonyConnectionUtils"

    const-string/jumbo v6, "- updateRecordSaveFilePath : recordSaveFilePath is exist"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setRecordSaveFilePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v5

    invoke-virtual {v5, p0, v4}, Lcom/android/services/utils/SecTelecomAdapter;->setSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    goto :goto_0
.end method

.method public static updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 21

    if-nez p0, :cond_0

    const-string/jumbo v16, "TelephonyConnectionUtils"

    const-string/jumbo v17, "updateSecCallExtraFromCallDetails: secCallExtra is null"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v16, 0x0

    return-object v16

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v16, "TelephonyConnectionUtils"

    const-string/jumbo v17, "updateSecCallExtraFromCallDetails: connection is null"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    if-eqz v3, :cond_1a

    const-string/jumbo v16, "audio_codec"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/services/telephony/common/SecCallExtra;->setAudioCodec(Ljava/lang/String;)V

    const-string/jumbo v16, "TelephonyConnectionUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "isAMRNBorWB = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, v3, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1b

    invoke-static {v3}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getSessionId(Lcom/android/internal/telephony/CallDetails;)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSessionId(I)V

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    :goto_0
    const-string/jumbo v16, "jansky_info_for_tmo"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    const-string/jumbo v16, "sipcallid"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v16, "linemsisdn"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v16

    sget-object v17, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v16

    sget-object v17, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_4

    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string/jumbo v16, "+"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/services/telephony/common/SecCallExtra;->setLineMSISDN(Ljava/lang/String;)V

    const-string/jumbo v16, "TelephonyConnectionUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "set linemsisdn : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/services/telephony/common/SecCallExtra;->setSipCallId(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v16, "radiotech"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v16, "TelephonyConnectionUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "radioTech = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v16, "epdg"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgCall(Z)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgW2L(Z)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setWifiCall(Z)V

    :goto_1
    const-string/jumbo v16, "vzw_volte_ui"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    const-string/jumbo v16, "TelephonyConnectionUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "vzw EpdgW2L = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgW2L()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgW2L()Z

    move-result v16

    if-eqz v16, :cond_21

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneUtils;->setEpdgW2L(Z)V

    :cond_6
    :goto_2
    const-string/jumbo v16, "vzw_volte_ui"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    iget v0, v3, Lcom/android/internal/telephony/CallDetails;->call_type:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    iget v0, v3, Lcom/android/internal/telephony/CallDetails;->call_type:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_22

    :cond_7
    :goto_3
    const-string/jumbo v16, "TelephonyConnectionUtils"

    const-string/jumbo v17, "setHasBeenVideoCall is set by video"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setHasBeenVideoCall(Z)V

    :cond_8
    invoke-static {v3}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getSecVideoResolution(Lcom/android/internal/telephony/CallDetails;)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    const-string/jumbo v16, "feature_dcm"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    iget v0, v3, Lcom/android/internal/telephony/CallDetails;->call_type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_23

    const-string/jumbo v16, "ril.ims.videostate"

    const-string/jumbo v17, "true"

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->isModifyCallRequestInProgress()Z

    move-result v16

    if-nez v16, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->isModifyCallReceiveInProgress()Z

    move-result v16

    :goto_5
    if-nez v16, :cond_a

    iget v0, v3, Lcom/android/internal/telephony/CallDetails;->call_type:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    :cond_a
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallDetails;->toCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v16

    sget-object v17, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_b

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCall(Z)V

    :cond_b
    const-string/jumbo v16, "true"

    const-string/jumbo v17, "isGroupCall"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    invoke-static {v3}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isIMSVideoConferenceCall(Lcom/android/internal/telephony/CallDetails;)Z

    move-result v16

    if-eqz v16, :cond_e

    :cond_c
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIsVolteGroupCall(I)V

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIsVoicePartyCall(I)V

    const-string/jumbo v16, "video_conference"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_d

    const-string/jumbo v16, "ims_voice_conference"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->isReceivedCall()Z

    move-result v16

    if-nez v16, :cond_e

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getNameForIMSConference()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setNameForIMSConference(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getNumberForIMSConference()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setNumberForIMSConference(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getFirstCallerForIMSConference()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setFirstCallerForIMSConference(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getStateChanged()Z

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceStateChanged(Z)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantNumber()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setAliveParticipantNumber(Ljava/lang/String;)V

    const-string/jumbo v16, "ims_voice_conference_vzw"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantCount(I)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantNumberArray()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantNumber([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantNameArray()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantName([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantPhotoUriArray()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantPhotoUri([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantLookupKeyArray()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantLookupKey([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantStateArray()[I

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantState([I)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantStatusArray()[I

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantStatus([I)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantCreateTimeArray()[J

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantCreateTime([J)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantStartDurationArray()[J

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantStartDuration([J)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantDurationArray()[J

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantDuration([J)V

    :cond_e
    const-string/jumbo v16, "feature_dcm"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_10

    const-string/jumbo v16, "feature_tmo"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_f

    const-string/jumbo v16, "feature_spr"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    :cond_f
    iget v0, v3, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_25

    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getAudioCodec(Lcom/android/internal/telephony/Connection;)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setHDIcon(I)V

    :cond_11
    :goto_6
    const-string/jumbo v16, "vzw_volte_ui"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_12

    invoke-static {v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isTtyType(Lcom/android/internal/telephony/Call;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setTtyType(I)V

    :cond_12
    const-string/jumbo v16, "redirectnm"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setForwardingNumber(Ljava/lang/String;)V

    const-string/jumbo v16, "redirectpi"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setForwardingPresentation(Ljava/lang/String;)V

    const-string/jumbo v16, "support_cvo"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_14

    const-string/jumbo v16, "cvoenable"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    const-string/jumbo v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_26

    :cond_13
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setCVOStatus(I)V

    :cond_14
    :goto_7
    const-string/jumbo v16, "support_twophone"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTwoPhoneRegistered()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v16

    if-eqz v16, :cond_15

    const-string/jumbo v16, "true"

    const-string/jumbo v17, "isTwoPhone"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v16, "TelephonyConnectionUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "isTwoPhoneExtra = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setIsTwoPhone(Z)V

    :cond_15
    const-string/jumbo v16, "TelephonyConnectionUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mtconference = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "mtconference"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v16, "true"

    const-string/jumbo v17, "mtconference"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setVolteConference(Z)V

    const-string/jumbo v16, "multiend_point"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_17

    const-string/jumbo v16, "callDirection"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v16, "imsCallId"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_16

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setCallDirection(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_16
    :goto_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/services/telephony/common/SecCallExtra;->setImsCallId(Ljava/lang/String;)V

    :cond_17
    const-string/jumbo v16, "disable_waiting_tone"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v16

    if-eqz v16, :cond_18

    const-string/jumbo v16, "cwToneSignal"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "TelephonyConnectionUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "cwToneSignal = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setCWToneSignal(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_18
    :goto_9
    const-string/jumbo v16, "cdnip_supplementary_service"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->getCdnipNumber()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "dualnumber"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_27

    const-string/jumbo v16, "TelephonyConnectionUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "cdnipNumber = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/SecCallExtra;->setCdnipNumber(Ljava/lang/String;)V

    :cond_19
    :goto_a
    const-string/jumbo v16, "TelephonyConnectionUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getUpdatedSecCallExtra call state["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "] secCallExtra"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    return-object p0

    :cond_1b
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v16, "lte"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v16

    if-eqz v16, :cond_1d

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgW2L(Z)V

    :goto_b
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgCall(Z)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setWifiCall(Z)V

    goto/16 :goto_1

    :cond_1d
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgW2L(Z)V

    goto :goto_b

    :cond_1e
    const-string/jumbo v16, "vowifi"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setWifiCall(Z)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgCall(Z)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgW2L(Z)V

    goto/16 :goto_1

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v16

    sget-object v17, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_20

    iget v0, v3, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    const-string/jumbo v16, "TelephonyConnectionUtils"

    const-string/jumbo v17, "do not set epdg default value in this dialing case "

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_20
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgCall(Z)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgW2L(Z)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setWifiCall(Z)V

    goto/16 :goto_1

    :cond_21
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneUtils;->setEpdgW2L(Z)V

    goto/16 :goto_2

    :cond_22
    iget v0, v3, Lcom/android/internal/telephony/CallDetails;->call_type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    goto/16 :goto_3

    :cond_23
    const-string/jumbo v16, "ril.ims.videostate"

    const-string/jumbo v17, "false"

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_24
    const/16 v16, 0x1

    goto/16 :goto_5

    :cond_25
    const-string/jumbo v16, "call_details_for_hd_icon"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-static/range {p1 .. p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getHdIcon(Lcom/android/internal/telephony/Connection;)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setHDIcon(I)V

    goto/16 :goto_6

    :cond_26
    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setCVOStatus(I)V

    goto/16 :goto_7

    :catch_0
    move-exception v6

    const-string/jumbo v16, "TelephonyConnectionUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Could not get callDirection from CallDetails : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :catch_1
    move-exception v6

    const-string/jumbo v16, "TelephonyConnectionUtils"

    const-string/jumbo v17, "Could not get cwToneSignal from CallDetails"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_27
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_28

    const-string/jumbo v16, "TelephonyConnectionUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "cdnipNumber = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " -> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/SecCallExtra;->setCdnipNumber(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_28
    const-string/jumbo v16, "TelephonyConnectionUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "cdnipNumber = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", skip to set new cdnip number"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a
.end method
