.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Msg"
.end annotation


# instance fields
.field flagRead:I

.field folderId:J

.field id:J

.field localInitiatedSend:Z

.field oldFolderId:J

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field threadId:I

.field transparent:Z

.field type:I


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    iput-wide p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    iput p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJI)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    iput-wide p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    iput-wide p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    iput p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    if-nez p1, :cond_1

    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v6

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    iget-wide v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    return v6

    :cond_3
    return v7
.end method

.method public hashCode()I
    .locals 7

    const/16 v0, 0x1f

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    iget-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    return v1
.end method
