.class public Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$NetServiceBinder;
.super Landroid/os/Binder;
.source "BluetoothAdvancedOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$NetServiceBinder;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$NetServiceBinder;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    return-object v0
.end method
