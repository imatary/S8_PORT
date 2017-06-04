.class public interface abstract Lcom/samsung/android/app/omcagent/update/omc/ReportState;
.super Ljava/lang/Object;
.source "ReportState.java"


# static fields
.field public static final FINISH_RESULT_REPORT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

.field public static final INITIALIZE_OMC_RESULT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

.field public static final REBOOT_DEVICE:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

.field public static final REPORT_RESULT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

.field public static final UPDATE_OMC_VERSION:Lcom/samsung/android/app/omcagent/update/omc/ReportState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/ReportState$1;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/ReportState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/ReportState;->UPDATE_OMC_VERSION:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/ReportState$2;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/ReportState$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/ReportState;->REBOOT_DEVICE:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/ReportState$3;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/ReportState$3;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/ReportState;->REPORT_RESULT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/ReportState$4;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/ReportState$4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/ReportState;->INITIALIZE_OMC_RESULT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/ReportState$5;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/ReportState$5;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/ReportState;->FINISH_RESULT_REPORT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    return-void
.end method


# virtual methods
.method public abstract run(Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;)Lcom/samsung/android/app/omcagent/update/omc/ReportState;
.end method
