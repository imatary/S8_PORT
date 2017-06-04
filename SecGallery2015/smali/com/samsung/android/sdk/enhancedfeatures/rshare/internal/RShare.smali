.class public final Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare;
.super Ljava/lang/Object;
.source "RShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Address;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupColumn;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$MediaColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$ContentColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$ChunkColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$AddressColumns;
    }
.end annotation


# direct methods
.method public static result2str(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "RESULT_SERVER_ERROR"

    :goto_0
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "RESULT_CANCEL"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "RESULT_PAUSE"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "RESULT_STOP"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "RESULT_PROGRESS"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "RESULT_START"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "RESULT_OK"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "RESULT_ERROR"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "RESULT_NETWORK_TIMEOUT"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "RESULT_BAD_ACCESS_TOKEN"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "RESULT_DB_ERROR"

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "RESULT_NO_DATA"

    goto :goto_0

    :pswitch_c
    const-string/jumbo v0, "RESULT_FILE_NOT_FOUND"

    goto :goto_0

    :pswitch_d
    const-string/jumbo v0, "RESULT_BAD_REQUEST"

    goto :goto_0

    :pswitch_e
    const-string/jumbo v0, "RESULT_CANCELED_ALREADY"

    goto :goto_0

    :pswitch_f
    const-string/jumbo v0, "RESULT_STARTED_ALREADY"

    goto :goto_0

    :pswitch_10
    const-string/jumbo v0, "RESULT_NO_NETWORK_CONNECTION"

    goto :goto_0

    :pswitch_11
    const-string/jumbo v0, "RESULT_SERVER_ERROR"

    goto :goto_0

    :pswitch_12
    const-string/jumbo v0, "RESULT_NETWORK_ERROR"

    goto :goto_0

    :pswitch_13
    const-string/jumbo v0, "RESULT_AUTH_ERROR"

    goto :goto_0

    :pswitch_14
    const-string/jumbo v0, "RESULT_LOCAL_TIMEOUT"

    goto :goto_0

    :pswitch_15
    const-string/jumbo v0, "RESULT_ESU_AUTH_FAILURE"

    goto :goto_0

    :pswitch_16
    const-string/jumbo v0, "RESULT_OUT_OF_SERVER_STORAGE"

    goto :goto_0

    :pswitch_17
    const-string/jumbo v0, "RESULT_EXCEED_CONTENT_LENGTH_LIMIT"

    goto :goto_0

    :pswitch_18
    const-string/jumbo v0, "RESULT_NOT_SUPPORTED_CONTENT_TYPE"

    goto :goto_0

    :pswitch_19
    const-string/jumbo v0, "RESULT_EXCEED_DOWNLOAD_COUNT"

    goto :goto_0

    :pswitch_1a
    const-string/jumbo v0, "RESULT_EXCEED_DAILY_UPLOAD_SIZE_LIMIT"

    goto :goto_0

    :pswitch_1b
    const-string/jumbo v0, "RESULT_FILE_INVALID"

    goto :goto_0

    :pswitch_1c
    const-string/jumbo v0, "RESULT_INVALID_QUATA_TIMESTAMP"

    goto :goto_0

    :pswitch_1d
    const-string/jumbo v0, "RESULT_INVALID_DOWNLOAD_PATH"

    goto :goto_0

    :pswitch_1e
    const-string/jumbo v0, "RESULT_EXCEED_DAILY_UPLOAD_COUNT_LIMIT"

    goto :goto_0

    :pswitch_1f
    const-string/jumbo v0, "RESULT_EXCEED_DOWNLOAD_COUNT_AT_SAME_TIME"

    goto :goto_0

    :pswitch_20
    const-string/jumbo v0, "RC_RENAME_FAIL"

    goto :goto_0

    :pswitch_21
    const-string/jumbo v0, "RESUTLT_UNEXPECTED_ERROR"

    goto/16 :goto_0

    :pswitch_22
    const-string/jumbo v0, "RESULT_UNAVAILABLE_RECIPIENTS"

    goto/16 :goto_0

    :pswitch_23
    const-string/jumbo v0, "RESULT_INVALID_RECIPIENTS"

    goto/16 :goto_0

    :pswitch_24
    const-string/jumbo v0, "RESULT_SHARE_SESSION_BUSY"

    goto/16 :goto_0

    :pswitch_25
    const-string/jumbo v0, "RESULT_INVALID_OPERATION"

    goto/16 :goto_0

    :pswitch_26
    const-string/jumbo v0, "RESULT_INVALID_CONTENT_OR_RECIPIENT"

    goto/16 :goto_0

    :pswitch_27
    const-string/jumbo v0, "RESULT_MAX_SHARE_NUMBER_EXCEEDS"

    goto/16 :goto_0

    :pswitch_28
    const-string/jumbo v0, "RESULT_NOT_A_SHARE_MEMBER"

    goto/16 :goto_0

    :pswitch_29
    const-string/jumbo v0, "RESULT_SHARED_FILE_NOT_EXIST"

    goto/16 :goto_0

    :pswitch_2a
    const-string/jumbo v0, "RESULT_NOT_GENERATED_THUMBNAIL_IMAGE"

    goto/16 :goto_0

    :pswitch_2b
    const-string/jumbo v0, "RESULT_NOT_REGISTERED_USER"

    goto/16 :goto_0

    :pswitch_2c
    const-string/jumbo v0, "RESULT_INVALID_ACCESS_TOKEN"

    goto/16 :goto_0

    :pswitch_2d
    const-string/jumbo v0, "RESULT_BAD_JSON_FORMAT"

    goto/16 :goto_0

    :pswitch_2e
    const-string/jumbo v0, "RESULT_HEADER_TIMEZONE_INVALID"

    goto/16 :goto_0

    :pswitch_2f
    const-string/jumbo v0, "RESULT_BAD_PHONE_NUMBER_FORMAT"

    goto/16 :goto_0

    :pswitch_30
    const-string/jumbo v0, "RESULT_INVALID_GROUP_ID"

    goto/16 :goto_0

    :pswitch_31
    const-string/jumbo v0, "RESULT_MAXIMUM_SHARE_CONTENTS_EXCEEDS"

    goto/16 :goto_0

    :pswitch_32
    const-string/jumbo v0, "RESULT_SERVICE_STATUS_OFF"

    goto/16 :goto_0

    :pswitch_33
    const-string/jumbo v0, "RESULT_CANT_ADD_ONESELF"

    goto/16 :goto_0

    :pswitch_34
    const-string/jumbo v0, "RESULT_PARAMETER_CID_REQUIRED"

    goto/16 :goto_0

    :pswitch_35
    const-string/jumbo v0, "RESULT_PARAMETER_CID_BAD_FORMAT"

    goto/16 :goto_0

    :pswitch_36
    const-string/jumbo v0, "RESULT_PARAMETER_MODIFIED_AFTER"

    goto/16 :goto_0

    :pswitch_37
    const-string/jumbo v0, "RESULT_PARAMETER_REQUEST_TYPE_REQUIRED"

    goto/16 :goto_0

    :pswitch_38
    const-string/jumbo v0, "RESULT_MAXIMUM_REQUEST_COUNT_EXCEEDS"

    goto/16 :goto_0

    :pswitch_39
    const-string/jumbo v0, "RESULT_PARAMETER_CONTENT_START_INVALID"

    goto/16 :goto_0

    :pswitch_3a
    const-string/jumbo v0, "RESULT_PARAMETER_CONTENT_COUNT_BAD_FORMAT"

    goto/16 :goto_0

    :pswitch_3b
    const-string/jumbo v0, "HEADER_DUID_REQUIRED"

    goto/16 :goto_0

    :pswitch_3c
    const-string/jumbo v0, "HEADER_DUID_BAD_FORMAT"

    goto/16 :goto_0

    :pswitch_3d
    const-string/jumbo v0, "RESULT_INVALID_RECIPIENT_OR_CONTENT"

    goto/16 :goto_0

    :pswitch_3e
    const-string/jumbo v0, "RESULT_NOT_ALLOWED_OPERATION"

    goto/16 :goto_0

    :pswitch_3f
    const-string/jumbo v0, "RESULT_PARAMETER_CONTENT_TOKEN_INVALID"

    goto/16 :goto_0

    :pswitch_40
    const-string/jumbo v0, "RESULT_AUTH_CODE_INVALID_VALUE"

    goto/16 :goto_0

    :pswitch_41
    const-string/jumbo v0, "RESULT_RESOURCE_DOESNOT_EXIST"

    goto/16 :goto_0

    :pswitch_42
    const-string/jumbo v0, "RESULT_OUT_OF_DAILY_SERVER_UPLOAD_SIZE_LIMIT"

    goto/16 :goto_0

    :pswitch_43
    const-string/jumbo v0, "RESULT_GROUP_ID_INVALID"

    goto/16 :goto_0

    :pswitch_44
    const-string/jumbo v0, "RESULT_PUBLIC_TOKEN_INVALID"

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x8e
        :pswitch_26
        :pswitch_25
        :pswitch_0
        :pswitch_23
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_42
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3f
        :pswitch_3e
        :pswitch_28
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_43
        :pswitch_2d
        :pswitch_2c
        :pswitch_0
        :pswitch_27
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_24
        :pswitch_44
        :pswitch_41
        :pswitch_40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
