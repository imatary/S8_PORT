.class public interface abstract Lcom/samsung/android/app/omcagent/update/omc/InstallState;
.super Ljava/lang/Object;
.source "InstallState.java"


# static fields
.field public static final CHECK_DEVICE_STATE:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

.field public static final COPY_SOURCES_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

.field public static final FINISH_PACKAGE_INSTALL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

.field public static final INSTALL_SOURCES_PACKAGE_FAIL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

.field public static final START_TO_INSTALL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

.field public static final VERIFY_OMC_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/InstallState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/InstallState$1;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/InstallState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/InstallState;->VERIFY_OMC_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/InstallState$2;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/InstallState$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/InstallState;->CHECK_DEVICE_STATE:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/InstallState$3;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/InstallState$3;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/InstallState;->COPY_SOURCES_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/InstallState$4;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/InstallState$4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/InstallState;->START_TO_INSTALL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/InstallState$5;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/InstallState$5;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/InstallState;->INSTALL_SOURCES_PACKAGE_FAIL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/InstallState$6;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/InstallState$6;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/InstallState;->FINISH_PACKAGE_INSTALL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    return-void
.end method


# virtual methods
.method public abstract run(Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;)Lcom/samsung/android/app/omcagent/update/omc/InstallState;
.end method
