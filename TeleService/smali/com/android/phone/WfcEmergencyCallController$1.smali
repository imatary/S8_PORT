.class Lcom/android/phone/WfcEmergencyCallController$1;
.super Landroid/database/ContentObserver;
.source "WfcEmergencyCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/WfcEmergencyCallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-samsung-tmowfc-wfcutils-WfcDbHelper$EmergencyCallModePreferenceContract$EcmpSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/android/phone/WfcEmergencyCallController;


# direct methods
.method private static synthetic -getcom-samsung-tmowfc-wfcutils-WfcDbHelper$EmergencyCallModePreferenceContract$EcmpSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/WfcEmergencyCallController$1;->-com-samsung-tmowfc-wfcutils-WfcDbHelper$EmergencyCallModePreferenceContract$EcmpSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/WfcEmergencyCallController$1;->-com-samsung-tmowfc-wfcutils-WfcDbHelper$EmergencyCallModePreferenceContract$EcmpSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;->values()[Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;->CS_PREFERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;

    invoke-virtual {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;->IMS_PREFERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;

    invoke-virtual {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/android/phone/WfcEmergencyCallController$1;->-com-samsung-tmowfc-wfcutils-WfcDbHelper$EmergencyCallModePreferenceContract$EcmpSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/phone/WfcEmergencyCallController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/WfcEmergencyCallController$1;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController$1;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    invoke-static {v1}, Lcom/android/phone/WfcEmergencyCallController;->-wrap0(Lcom/android/phone/WfcEmergencyCallController;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getEmergencyCallModePreference(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/WfcEmergencyCallController$1;->-getcom-samsung-tmowfc-wfcutils-WfcDbHelper$EmergencyCallModePreferenceContract$EcmpSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/android/phone/WfcEmergencyCallController;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ECMP state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController$1;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    invoke-static {v3}, Lcom/android/phone/WfcEmergencyCallController;->-get1(Lcom/android/phone/WfcEmergencyCallController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController$1;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/WfcEmergencyCallController;->-set0(Lcom/android/phone/WfcEmergencyCallController;I)I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController$1;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/WfcEmergencyCallController;->-set0(Lcom/android/phone/WfcEmergencyCallController;I)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
