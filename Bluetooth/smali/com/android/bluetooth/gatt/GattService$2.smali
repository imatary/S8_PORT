.class Lcom/android/bluetooth/gatt/GattService$2;
.super Ljava/lang/Object;
.source "GattService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/gatt/GattService;->onSearchCompleted(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/gatt/GattService;

.field final synthetic val$connId:I


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$2;->this$0:Lcom/android/bluetooth/gatt/GattService;

    iput p2, p0, Lcom/android/bluetooth/gatt/GattService$2;->val$connId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$2;->this$0:Lcom/android/bluetooth/gatt/GattService;

    iget v1, p0, Lcom/android/bluetooth/gatt/GattService$2;->val$connId:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->-wrap13(Lcom/android/bluetooth/gatt/GattService;I)V

    return-void
.end method
