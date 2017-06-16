.class Lcom/android/bluetooth/gatt/CallbackInfo;
.super Ljava/lang/Object;
.source "CallbackInfo.java"


# instance fields
.field address:Ljava/lang/String;

.field handle:I

.field status:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->address:Ljava/lang/String;

    iput p2, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->status:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->address:Ljava/lang/String;

    iput p2, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->status:I

    iput p3, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->handle:I

    return-void
.end method
