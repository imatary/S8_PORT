.class public Lcom/sec/android/app/ve/export/ExportService;
.super Landroid/app/Service;
.source "ExportService.java"


# static fields
.field public static EXPORT_COMPLETEION_ID:I

.field public static EXPORT_NOTFICATION_ID:I


# instance fields
.field contentView:Landroid/support/v4/app/NotificationCompat$Builder;

.field public volatile defaultPaused:Z

.field private mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

.field private mExpInterface:Lcom/sec/android/app/ve/export/ExportInterface;

.field private nManager:Landroid/app/NotificationManager;

.field private notification:Landroid/app/Notification;

.field private onGoingNotification:Landroid/app/Notification;

.field private prevProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/sec/android/app/ve/export/ExportService;->EXPORT_NOTFICATION_ID:I

    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/ve/export/ExportService;->EXPORT_COMPLETEION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/export/ExportService;->mExpInterface:Lcom/sec/android/app/ve/export/ExportInterface;

    iput v1, p0, Lcom/sec/android/app/ve/export/ExportService;->prevProgress:I

    iput-boolean v1, p0, Lcom/sec/android/app/ve/export/ExportService;->defaultPaused:Z

    new-instance v0, Lcom/sec/android/app/ve/export/ExportService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/export/ExportService$2;-><init>(Lcom/sec/android/app/ve/export/ExportService;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/export/ExportService;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService;->mExpInterface:Lcom/sec/android/app/ve/export/ExportInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/ve/export/ExportService;Lcom/sec/android/app/ve/export/ExportInterface;)Lcom/sec/android/app/ve/export/ExportInterface;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/export/ExportService;->mExpInterface:Lcom/sec/android/app/ve/export/ExportInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService;->nManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/ve/export/ExportService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/export/ExportService;->nManager:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService;->onGoingNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/ve/export/ExportService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/export/ExportService;->onGoingNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/ve/export/ExportService;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/ve/export/ExportService;->prevProgress:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/ve/export/ExportService;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/ve/export/ExportService;->prevProgress:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/ve/export/ExportService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/export/ExportService;->notification:Landroid/app/Notification;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/ve/export/ExportService;->onBind(Landroid/content/Intent;)Lcom/sec/android/app/ve/export/IExportService$Stub;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Lcom/sec/android/app/ve/export/IExportService$Stub;
    .locals 1

    new-instance v0, Lcom/sec/android/app/ve/export/ExportService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/export/ExportService$1;-><init>(Lcom/sec/android/app/ve/export/ExportService;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService;->nManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/export/ExportService;->prevProgress:I

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService;->nManager:Landroid/app/NotificationManager;

    sget v1, Lcom/sec/android/app/ve/export/ExportService;->EXPORT_NOTFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
