.class public interface abstract Lcom/samsung/android/app/omcagent/update/app/DownloadState;
.super Ljava/lang/Object;
.source "DownloadState.java"


# static fields
.field public static final CANCEL_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

.field public static final DOWNLOAD_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

.field public static final FINISH_APPLICATION_SESSION:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

.field public static final INSTALL_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

.field public static final PAUSE_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

.field public static final START_APPLICATION_SESSION:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

.field public static final UPDATE_APPLICATION_URL:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

.field public static final VERIFY_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$1;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState;->START_APPLICATION_SESSION:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$2;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState;->UPDATE_APPLICATION_URL:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState;->DOWNLOAD_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$4;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState;->VERIFY_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$5;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$5;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState;->INSTALL_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$6;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$6;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState;->CANCEL_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$7;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$7;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState;->PAUSE_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$8;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$8;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState;->FINISH_APPLICATION_SESSION:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    return-void
.end method


# virtual methods
.method public abstract run(Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;)Lcom/samsung/android/app/omcagent/update/app/DownloadState;
.end method
