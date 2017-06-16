.class Lcom/android/bluetooth/gatt/AppScanStats$LastScan;
.super Ljava/lang/Object;
.source "AppScanStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/AppScanStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LastScan"
.end annotation


# instance fields
.field background:Z

.field duration:J

.field opportunistic:Z

.field results:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/AppScanStats;

.field timeout:Z

.field timestamp:J


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/gatt/AppScanStats;JJZZ)V
    .locals 2

    iput-object p1, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->this$0:Lcom/android/bluetooth/gatt/AppScanStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p4, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->duration:J

    iput-wide p2, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->timestamp:J

    iput-boolean p6, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->opportunistic:Z

    iput-boolean p7, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->background:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    return-void
.end method
