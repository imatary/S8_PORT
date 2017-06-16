.class Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
.super Ljava/lang/Object;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatchScanParams"
.end annotation


# instance fields
.field fullScanClientIf:I

.field scanMode:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanManager;

.field truncatedScanClientIf:I


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    iput v0, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    iput v0, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    iget v3, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    iget v4, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    iget v4, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    iget v4, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method
