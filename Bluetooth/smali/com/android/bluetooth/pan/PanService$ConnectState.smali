.class public Lcom/android/bluetooth/pan/PanService$ConnectState;
.super Ljava/lang/Object;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConnectState"
.end annotation


# instance fields
.field addr:[B

.field error:I

.field local_role:I

.field remote_role:I

.field state:I


# direct methods
.method public constructor <init>([BIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->addr:[B

    iput p2, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->state:I

    iput p3, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->error:I

    iput p4, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->local_role:I

    iput p5, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->remote_role:I

    return-void
.end method
