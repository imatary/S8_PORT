.class public interface abstract Lcom/samsung/android/app/omcagent/update/omc/PrepareState;
.super Ljava/lang/Object;
.source "PrepareState.java"


# static fields
.field public static final ADD_APPLICATIONS_TO_DB:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

.field public static final ADD_RESOURCE_INFO_TO_DB:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

.field public static final CHECK_TYPE_SAMSUNGAPPS_APPLICATIONS:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

.field public static final DOWNLOAD_APPLICATION_ICONS:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

.field public static final FINISH_PACKAGE_PREPARE:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

.field public static final INITIALIZE_RESOURCES_RESULT:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

.field public static final PREPARED_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

.field public static final REPORT_RESOURCES:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

.field public static final RETRY_CHECK_APPLICATION:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

.field public static final UPDATE_APPLICATION_STATE:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

.field public static final VERIFY_FAIL:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

.field public static final VERIFY_SOURCE_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$1;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->VERIFY_SOURCE_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$2;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->ADD_RESOURCE_INFO_TO_DB:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$3;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$3;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->ADD_APPLICATIONS_TO_DB:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$4;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->CHECK_TYPE_SAMSUNGAPPS_APPLICATIONS:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$5;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$5;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->RETRY_CHECK_APPLICATION:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$6;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$6;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->DOWNLOAD_APPLICATION_ICONS:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$7;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$7;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->UPDATE_APPLICATION_STATE:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$8;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$8;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->PREPARED_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$9;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$9;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->VERIFY_FAIL:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$10;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$10;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->FINISH_PACKAGE_PREPARE:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$11;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$11;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->REPORT_RESOURCES:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$12;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$12;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->INITIALIZE_RESOURCES_RESULT:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    return-void
.end method


# virtual methods
.method public abstract run(Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;)Lcom/samsung/android/app/omcagent/update/omc/PrepareState;
.end method
