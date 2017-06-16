.class public Lcom/samsung/ble/BleAutoConnectService$LocalBinder;
.super Landroid/os/Binder;
.source "BleAutoConnectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ble/BleAutoConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ble/BleAutoConnectService;


# direct methods
.method public constructor <init>(Lcom/samsung/ble/BleAutoConnectService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/ble/BleAutoConnectService$LocalBinder;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/samsung/ble/BleAutoConnectService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ble/BleAutoConnectService$LocalBinder;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    return-object v0
.end method
