.class Lcom/android/bluetooth/gatt/ContextMap$Connection;
.super Ljava/lang/Object;
.source "ContextMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ContextMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connection"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field appId:I

.field connId:I

.field startTime:J

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ContextMap;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ContextMap;ILjava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->this$0:Lcom/android/bluetooth/gatt/ContextMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    iput-object p3, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    iput p4, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->startTime:J

    return-void
.end method
