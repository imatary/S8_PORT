.class public Lcom/broadcom/fm/fmreceiver/FmService;
.super Landroid/app/Service;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field public static final TAG:Ljava/lang/String; = "FmService"

.field private static final V:Z = true


# instance fields
.field private mBinder:Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;

.field public mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-direct {v0, p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "FmService"

    const-string/jumbo v1, "Binding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService;->mBinder:Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;

    invoke-direct {v0, p0}, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;-><init>(Lcom/broadcom/fm/fmreceiver/FmService;)V

    iput-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService;->mBinder:Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;

    const-string/jumbo v0, "FmService"

    const-string/jumbo v1, "FM Service  onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "FmService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService;->mBinder:Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;

    invoke-virtual {v0}, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->cleanUp()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService;->mBinder:Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;

    const-string/jumbo v0, "FmService"

    const-string/jumbo v1, "onDestroy done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
