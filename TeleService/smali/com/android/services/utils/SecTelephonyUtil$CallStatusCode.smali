.class public final enum Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
.super Ljava/lang/Enum;
.source "SecTelephonyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/utils/SecTelephonyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallStatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum AUTO_REJECTED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum CALL_FAILED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum CALL_FAILED_LOWBATT:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum CDMA_CALL_LOST:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum CDMA_CALL_OUT_BARRING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum DCM_VT_CALL_ERROR:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum DCM_VT_EMR_CALL_ERROR:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum DIALED_MMI:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum EMERGENCY_CALL_FROM_AIRPLANE_MODE_DIALOG:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum ETC_CAUSE_REJECT:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum EXITED_ECM:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum IMS_NOT_REGISTERED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum IMS_SERVICE_IMPOSSIBLE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum LGT_REG_AUTH_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum NETWORK_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum NOT_REGISTERED_NUMBER:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum NO_PHONE_NUMBER_SUPPLIED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum OUT_OF_3G_NETWORK:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum OUT_OF_SERVICE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum POWER_OFF:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum RESTRICT_CALL_FACTORY_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum RESTRICT_CALL_FDN_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

.field public static final enum VOICEMAIL_NUMBER_MISSING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "POWER_OFF"

    invoke-direct {v0, v1, v4}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->POWER_OFF:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "EMERGENCY_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "OUT_OF_SERVICE"

    invoke-direct {v0, v1, v6}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "NO_PHONE_NUMBER_SUPPLIED"

    invoke-direct {v0, v1, v7}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "DIALED_MMI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->DIALED_MMI:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "CALL_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->CALL_FAILED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "VOICEMAIL_NUMBER_MISSING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "CDMA_CALL_LOST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->CDMA_CALL_LOST:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "CDMA_CALL_OUT_BARRING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->CDMA_CALL_OUT_BARRING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "EXITED_ECM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EXITED_ECM:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "AUTO_REJECTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->AUTO_REJECTED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "EMERGENCY_CALL_FROM_AIRPLANE_MODE_DIALOG"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_CALL_FROM_AIRPLANE_MODE_DIALOG:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "IMSI_UNKNOWN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "ILLEGAL_MS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "ILLEGAL_ME"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "LOCATION_REG_FAIL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "LOCATION_REGSTERING"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "NETWORK_REG_FAIL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "GPRS_SERVICE_NOT_ALLOWED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "ETC_CAUSE_REJECT"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "FREQ_SEARCHING"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "LGT_REG_AUTH_FAIL"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "NOT_REGISTERED_NUMBER"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "RESTRICT_CALL_FDN_MODE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_CALL_FDN_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "RESTRICT_CALL_FACTORY_MODE"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "CALL_FAILED_LOWBATT"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->CALL_FAILED_LOWBATT:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "OUT_OF_3G_NETWORK"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->OUT_OF_3G_NETWORK:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "IMS_NOT_REGISTERED"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMS_NOT_REGISTERED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "IMS_SERVICE_IMPOSSIBLE"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMS_SERVICE_IMPOSSIBLE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "DCM_VT_EMR_CALL_ERROR"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->DCM_VT_EMR_CALL_ERROR:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const-string/jumbo v1, "DCM_VT_CALL_ERROR"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->DCM_VT_CALL_ERROR:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v0, 0x23

    new-array v0, v0, [Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->POWER_OFF:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->DIALED_MMI:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->CALL_FAILED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->CDMA_CALL_LOST:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->CDMA_CALL_OUT_BARRING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EXITED_ECM:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->AUTO_REJECTED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_CALL_FROM_AIRPLANE_MODE_DIALOG:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_CALL_FDN_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->CALL_FAILED_LOWBATT:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->OUT_OF_3G_NETWORK:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMS_NOT_REGISTERED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMS_SERVICE_IMPOSSIBLE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->DCM_VT_EMR_CALL_ERROR:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->DCM_VT_CALL_ERROR:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->$VALUES:[Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    .locals 1

    const-class v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v0
.end method

.method public static values()[Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    .locals 1

    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->$VALUES:[Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v0
.end method
