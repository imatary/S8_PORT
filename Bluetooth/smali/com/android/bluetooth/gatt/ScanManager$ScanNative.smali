.class Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
.super Ljava/lang/Object;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanNative"
.end annotation


# static fields
.field private static final ALL_PASS_FILTER_INDEX_BATCH_SCAN:I = 0x2

.field private static final ALL_PASS_FILTER_INDEX_REGULAR_SCAN:I = 0x1

.field private static final ALL_PASS_FILTER_SELECTION:I = 0x0

.field private static final DELIVERY_MODE_BATCH:I = 0x2

.field private static final DELIVERY_MODE_IMMEDIATE:I = 0x0

.field private static final DELIVERY_MODE_ON_FOUND_LOST:I = 0x1

.field private static final DISCARD_OLDEST_WHEN_BUFFER_FULL:I = 0x0

.field private static final FILTER_LOGIC_TYPE:I = 0x1

.field private static final LIST_LOGIC_TYPE:I = 0x1111111

.field private static final MATCH_MODE_AGGRESSIVE_HIGH_RSSI:I = -0x46

.field private static final MATCH_MODE_AGGRESSIVE_LOW_RSSI:I = -0x46

.field private static final MATCH_MODE_AGGRESSIVE_TIMEOUT_FACTOR:I = 0x1

.field private static final MATCH_MODE_STICKY_HIGH_RSSI:I = -0x64

.field private static final MATCH_MODE_STICKY_LOW_RSSI:I = -0x64

.field private static final MATCH_MODE_STICKY_TIMEOUT_FACTOR:I = 0x3

.field private static final ONFOUND_SIGHTINGS_AGGRESSIVE:I = 0x1

.field private static final ONFOUND_SIGHTINGS_STICKY:I = 0x4

.field private static final ONLOST_FACTOR:I = 0x2

.field private static final ONLOST_ONFOUND_BASE_TIMEOUT_MS:I = 0x1f4

.field private static final SCAN_MODE_BALANCED_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_BALANCED_WINDOW_MS:I = 0x7d0

.field private static final SCAN_MODE_BATCH_BALANCED_INTERVAL_MS:I = 0x3a98

.field private static final SCAN_MODE_BATCH_BALANCED_WINDOW_MS:I = 0x5dc

.field private static final SCAN_MODE_BATCH_LOW_LATENCY_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_BATCH_LOW_LATENCY_WINDOW_MS:I = 0x5dc

.field private static final SCAN_MODE_BATCH_LOW_POWER_INTERVAL_MS:I = 0x249f0

.field private static final SCAN_MODE_BATCH_LOW_POWER_WINDOW_MS:I = 0x5dc

.field private static final SCAN_MODE_LOW_LATENCY_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_LOW_LATENCY_WINDOW_MS:I = 0x1388

.field private static final SCAN_MODE_LOW_POWER_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_LOW_POWER_WINDOW_MS:I = 0x1f4

.field private static final SCAN_MODE_SAMSUNG_BALANCED:I = 0x28

.field private static final SCAN_MODE_SAMSUNG_LOW_LATENCY:I = 0x64

.field private static final SCAN_MODE_SAMSUNG_LOW_POWER:I = 0xa


# instance fields
.field private SCAN_MODE_QUICK_CONNECT_INTERVAL_MS:I

.field private SCAN_MODE_QUICK_CONNECT_WINDOW_MS:I

.field private SCAN_MODE_SAMSUNG_QUICK_CONNECT:I

.field private customParamChanged:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAllPassBatchClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllPassRegularClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBatchScanIntervalIntent:Landroid/app/PendingIntent;

.field private final mClientFilterIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFilterIndexStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPowerScanValue:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isExemptFromScanDowngrade(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;I)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchScanClient(I)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numNonCustomRegularScanClients()I

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0xa0

    iput v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->SCAN_MODE_QUICK_CONNECT_WINDOW_MS:I

    const/16 v2, 0x618

    iput v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->SCAN_MODE_QUICK_CONNECT_INTERVAL_MS:I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    const/16 v2, 0xb

    iput v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->SCAN_MODE_SAMSUNG_QUICK_CONNECT:I

    iput-boolean v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->customParamChanged:Z

    const/16 v2, 0xa

    iput v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mLowPowerScanValue:I

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->-get17(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v2

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.bluetooth.gatt.REFRESH_BATCHED_SCAN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->-get17(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v2

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.android.bluetooth.gatt.REFRESH_BATCHED_SCAN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;-><init>(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;)V

    invoke-static {p1, v2}, Lcom/android/bluetooth/gatt/ScanManager;->-set1(Lcom/android/bluetooth/gatt/ScanManager;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->-get17(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v2

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->-get1(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/bluetooth/gatt/GattService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/bluetooth/gatt/ScanManager;->-set2(Lcom/android/bluetooth/gatt/ScanManager;Z)Z

    return-void
.end method

.method private addFilterToController(ILcom/android/bluetooth/gatt/ScanFilterQueue$Entry;I)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addFilterToController: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-byte v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-string/jumbo v16, ""

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->address:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->addr_type:B

    move/from16 v18, v0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v19, v0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v20, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-string/jumbo v16, ""

    const-string/jumbo v17, ""

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    move-object/from16 v20, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v12

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v14

    const-string/jumbo v16, ""

    const-string/jumbo v17, ""

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v19, v0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v20, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "adding filters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, ""

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v19, v0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v20, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    array-length v0, v2

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    array-length v2, v2

    move/from16 v0, v21

    if-eq v2, v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company_mask:I

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-string/jumbo v16, ""

    const-string/jumbo v17, ""

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    move-object/from16 v20, v0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private addOpporFilters()V
    .locals 3

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap0(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->initFilterIndexStack()V

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap0(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->oppoFilterConfigured:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->oppoFilterConfigured:Z

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureScanFilters(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private configureFilterParamter(ILcom/android/bluetooth/gatt/ScanClient;III)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I

    move-result v10

    const/16 v15, -0x80

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    move-object/from16 v16, v0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getOnFoundOnLostTimeoutMillis(Landroid/bluetooth/le/ScanSettings;Z)I

    move-result v11

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getOnFoundOnLostTimeoutMillis(Landroid/bluetooth/le/ScanSettings;Z)I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getOnFoundOnLostSightings(Landroid/bluetooth/le/ScanSettings;)I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getScanFilterRssiThreshold(Landroid/bluetooth/le/ScanSettings;)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getTrackableScanFilterRssiThreshold(Landroid/bluetooth/le/ScanSettings;)I

    move-result v9

    const/16 v12, 0x2710

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "configureFilterParamter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "scanFilterRssiThreshold = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "trackableScanFilterRssiThreshold = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "matchmode is ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/le/ScanSettings;->getMatchMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    new-instance v2, Lcom/android/bluetooth/gatt/FilterParams;

    const v6, 0x1111111

    const/4 v7, 0x1

    move/from16 v3, p1

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v14, p5

    invoke-direct/range {v2 .. v14}, Lcom/android/bluetooth/gatt/FilterParams;-><init>(IIIIIIIIIIII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterParamAddNative(Lcom/android/bluetooth/gatt/FilterParams;)V

    return-void
.end method

.method private configureScanFilters(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 14

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I

    move-result v7

    const/4 v12, 0x0

    invoke-direct {p0, p1, v7}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldAddAllPassFilterToController(Lcom/android/bluetooth/gatt/ScanClient;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterEnableNative(IZ)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne v7, v0, :cond_1

    const/4 v4, 0x2

    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureFilterParamter(ILcom/android/bluetooth/gatt/ScanClient;III)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    move v5, v12

    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v5, v12

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/le/ScanFilter;

    new-instance v11, Lcom/android/bluetooth/gatt/ScanFilterQueue;

    invoke-direct {v11}, Lcom/android/bluetooth/gatt/ScanFilterQueue;-><init>()V

    invoke-virtual {v11, v9}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addScanFilter(Landroid/bluetooth/le/ScanFilter;)V

    invoke-virtual {v11}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->getFeatureSelection()I

    move-result v3

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v0, "BtGatt.ScanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "set filter index= "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v13, " for clientIf= "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v11}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    invoke-virtual {v11}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->pop()Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    move-result-object v0

    invoke-direct {p0, v1, v0, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->addFilterToController(ILcom/android/bluetooth/gatt/ScanFilterQueue$Entry;I)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    const/4 v0, 0x1

    if-ne v7, v0, :cond_4

    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getNumOfTrackingAdvertisements(Landroid/bluetooth/le/ScanSettings;)I

    move-result v5

    const/4 v0, 0x1

    invoke-direct {p0, v5, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->manageAllocationOfTrackingAdvertisement(IZ)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "BtGatt.ScanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No hardware resources for onfound/onlost filter "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get17(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->onScanManagerErrorCallback(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_4
    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureFilterParamter(ILcom/android/bluetooth/gatt/ScanClient;III)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catch_0
    move-exception v8

    const-string/jumbo v0, "BtGatt.ScanManager"

    const-string/jumbo v2, "failed on onScanManagerCallback"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private native gattClientConfigBatchScanStorageNative(IIII)V
.end method

.method private native gattClientReadScanReportsNative(II)V
.end method

.method private native gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V
.end method

.method private native gattClientScanFilterClearNative(II)V
.end method

.method private native gattClientScanFilterDeleteNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V
.end method

.method private native gattClientScanFilterEnableNative(IZ)V
.end method

.method private native gattClientScanFilterParamAddNative(Lcom/android/bluetooth/gatt/FilterParams;)V
.end method

.method private native gattClientScanFilterParamClearAllNative(I)V
.end method

.method private native gattClientScanFilterParamDeleteNative(II)V
.end method

.method private native gattClientScanNative(Z)V
.end method

.method private native gattClientStartBatchScanNative(IIIIII)V
.end method

.method private native gattClientStopBatchScanNative(I)V
.end method

.method private native gattSetScanParametersNative(III)V
.end method

.method private getBatchScanClient(I)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 3

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getBatchScanIntervalMillis(I)I
    .locals 1

    const v0, 0x249f0

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 v0, 0x1388

    return v0

    :pswitch_1
    const/16 v0, 0x3a98

    return v0

    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBatchScanParams()Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    .locals 5

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    new-instance v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;-><init>(Lcom/android/bluetooth/gatt/ScanManager;)V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget v3, v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    iget-object v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    iput v3, v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    goto :goto_0

    :cond_1
    iget v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    iput v3, v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private getBatchScanWindowMillis(I)I
    .locals 1

    const/16 v0, 0x5dc

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBatchTriggerIntervalMillis()J
    .locals 8

    const-wide v2, 0x7fffffffffffffffL

    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v4}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    return v1

    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    :goto_0
    return v1

    :cond_4
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private getFullScanStoragePercent(I)I
    .locals 1

    const/16 v0, 0x32

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 v0, 0x64

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getNumOfTrackingAdvertisements(Landroid/bluetooth/le/ScanSettings;)I
    .locals 5

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->getTotalNumOfTrackableAdvertisements()I

    move-result v0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getNumOfMatches()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid setting for getNumOfMatches() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getNumOfMatches()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    :goto_0
    return v1

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_2
    div-int/lit8 v1, v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getOnFoundOnLostSightings(Landroid/bluetooth/le/ScanSettings;)I
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getMatchMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method private getOnFoundOnLostTimeoutMillis(Landroid/bluetooth/le/ScanSettings;Z)I
    .locals 3

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getMatchMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez p2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    :cond_0
    mul-int/lit16 v1, v0, 0x1f4

    return v1

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getResultType(Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)I
    .locals 2

    const/4 v1, -0x1

    iget v0, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v1
.end method

.method private getScanFilterRssiThreshold(Landroid/bluetooth/le/ScanSettings;)I
    .locals 4

    if-nez p1, :cond_0

    const/16 v1, -0x46

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getMatchMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/16 v0, -0x46

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid setting for getMatchMode() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getMatchMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "BtGatt.ScanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "High Rssi Filter value is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :sswitch_0
    const/16 v0, -0x80

    goto :goto_0

    :sswitch_1
    const/16 v0, -0x80

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanFilterRssiValue()I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private getScanIntervalMillis(Landroid/bluetooth/le/ScanSettings;)I
    .locals 2

    const/16 v1, 0x1388

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return v1

    :sswitch_0
    return v1

    :sswitch_1
    return v1

    :sswitch_2
    return v1

    :sswitch_3
    iget v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->SCAN_MODE_QUICK_CONNECT_INTERVAL_MS:I

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method private getScanWindowMillis(Landroid/bluetooth/le/ScanSettings;)I
    .locals 2

    const/16 v1, 0x1f4

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return v1

    :sswitch_0
    const/16 v0, 0x1388

    return v0

    :sswitch_1
    const/16 v0, 0x7d0

    return v0

    :sswitch_2
    return v1

    :sswitch_3
    iget v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->SCAN_MODE_QUICK_CONNECT_WINDOW_MS:I

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method private getTrackableScanFilterRssiThreshold(Landroid/bluetooth/le/ScanSettings;)I
    .locals 4

    if-nez p1, :cond_0

    const/16 v1, -0x46

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getMatchMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/16 v0, -0x46

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid setting for getMatchMode() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getMatchMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "BtGatt.ScanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Low Rssi Filter value is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :sswitch_0
    const/16 v0, -0x80

    goto :goto_0

    :sswitch_1
    const/16 v0, -0x80

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getTrackableScanFilterRssiValue()I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private initFilterIndexStack()V
    .locals 4

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->getNumOfOffloadedScanFilterSupported()I

    move-result v1

    const/4 v0, 0x3

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isCustomScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExemptFromScanDowngrade(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isFirstMatchScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isCustomScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFirstMatchScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manageAllocationOfTrackingAdvertisement(IZ)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "BtGatt.ScanManager"

    const-string/jumbo v3, "manageAllocationOfTrackingAdvertisement() - AdapterService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->getTotalNumOfTrackableAdvertisements()I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get0(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get0(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v0, v1, v2

    if-eqz p2, :cond_2

    if-lt v0, p1, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get0(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/bluetooth/gatt/ScanManager;->-set0(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v5

    :cond_1
    monitor-exit v3

    return v4

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get0(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-le p1, v2, :cond_3

    monitor-exit v3

    return v4

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get0(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/bluetooth/gatt/ScanManager;->-set0(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private numNonCustomRegularScanClients()I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget-object v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private numRegularScanClients()I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget-object v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private removeFilterIfExisits(Ljava/util/Set;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterParamDeleteNative(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    :cond_1
    return-void
.end method

.method private removeOpporFilters()V
    .locals 3

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->oppoFilterConfigured:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->oppoFilterConfigured:Z

    iget v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeScanFilters(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeScanFilters(I)V
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Deque;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v4

    if-ne v4, v7, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v5, "filter size is 1"

    invoke-static {v4, v5}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Deque;->element()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove allow all filters for, clientIf - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterParamDeleteNative(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete FilterIndex - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterParamDeleteNative(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    invoke-direct {p0, v4, p1, v7}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeFilterIfExisits(Ljava/util/Set;II)V

    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    const/4 v5, 0x2

    invoke-direct {p0, v4, p1, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeFilterIfExisits(Ljava/util/Set;II)V

    return-void
.end method

.method private resetBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 11

    const/4 v5, 0x0

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchScanParams()Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v7

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-set3(Lcom/android/bluetooth/gatt/ScanManager;Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->setBatchAlarm()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v6, "stopping BLe Batch"

    invoke-static {v0, v6}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientStopBatchScanNative(I)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->flushBatchResults(I)V

    goto :goto_0

    :cond_3
    const/16 v9, 0x5f

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v6, "Starting BLE batch scan"

    invoke-static {v0, v6}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getResultType(Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getFullScanStoragePercent(I)I

    move-result v8

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "configuring batch scan storage, appIf "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    iget v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    rsub-int/lit8 v6, v8, 0x64

    invoke-direct {p0, v0, v8, v6, v9}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientConfigBatchScanStorageNative(IIII)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    iget v0, v7, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchScanIntervalMillis(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v3

    iget v0, v7, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchScanWindowMillis(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v4

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientStartBatchScanNative(IIIIII)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    goto :goto_1
.end method

.method private resetCountDownLatch()V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->-set9(Lcom/android/bluetooth/gatt/ScanManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private setBatchAlarm()V
    .locals 10

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchTriggerIntervalMillis()J

    move-result-wide v8

    const-wide/16 v0, 0xa

    div-long v4, v8, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v2, v0, v8

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private shouldAddAllPassFilterToController(Lcom/android/bluetooth/gatt/ScanClient;I)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    iget v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    iget v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 5

    const/4 v2, 0x1

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget-object v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return v2

    :cond_2
    iget-object v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter;->isAllFieldsEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_4
    iget-object v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    if-le v3, v4, :cond_5

    :goto_0
    return v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private waitForCallback()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->-get8(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BtGatt.ScanManager"

    const-string/jumbo v2, "waitForCallback() - ScanManager is not avaliable, maybe during cleanup"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->-get14(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v5
.end method


# virtual methods
.method cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get2(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get17(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->-get1(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->-set2(Lcom/android/bluetooth/gatt/ScanManager;Z)Z

    return-void
.end method

.method configureRegularScanParams()V
    .locals 12

    const/4 v11, 0x1

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "configureRegularScanParams() - queue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v8}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    const/high16 v1, -0x80000000

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getAggressiveClient(Ljava/util/Set;)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v6}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numNonCustomRegularScanClients()I

    move-result v6

    if-ne v6, v11, :cond_5

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->addOpporFilters()V

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "configureRegularScanParams() - ScanSetting Scan mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mLastConfiguredScanSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v8}, Lcom/android/bluetooth/gatt/ScanManager;->-get10(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    const/high16 v6, -0x80000000

    if-eq v1, v6, :cond_7

    const/4 v6, -0x1

    if-eq v1, v6, :cond_7

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get10(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v6

    if-ne v1, v6, :cond_1

    iget-boolean v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->customParamChanged:Z

    if-eqz v6, :cond_4

    :cond_1
    iput-boolean v9, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->customParamChanged:Z

    iget-object v6, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-direct {p0, v6}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getScanWindowMillis(Landroid/bluetooth/le/ScanSettings;)I

    move-result v3

    iget-object v6, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-direct {p0, v6}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getScanIntervalMillis(Landroid/bluetooth/le/ScanSettings;)I

    move-result v2

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v3

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v2

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get7(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get7(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mLowPowerScanValue:I

    int-to-float v7, v3

    int-to-float v8, v2

    div-float/2addr v7, v8

    mul-float/2addr v7, v10

    float-to-int v7, v7

    if-le v6, v7, :cond_6

    :cond_2
    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    int-to-float v7, v3

    int-to-float v8, v2

    div-float/2addr v7, v8

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-set8(Lcom/android/bluetooth/gatt/ScanManager;I)I

    invoke-direct {p0, v9}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "configureRegularScanParams - scanInterval = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "configureRegularScanParams - scanWindow = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    iget v6, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-direct {p0, v6, v2, v3}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattSetScanParametersNative(III)V

    invoke-direct {p0, v11}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6, v1}, Lcom/android/bluetooth/gatt/ScanManager;->-set5(Lcom/android/bluetooth/gatt/ScanManager;I)I

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6, v3}, Lcom/android/bluetooth/gatt/ScanManager;->-set7(Lcom/android/bluetooth/gatt/ScanManager;I)I

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6, v2}, Lcom/android/bluetooth/gatt/ScanManager;->-set4(Lcom/android/bluetooth/gatt/ScanManager;I)I

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    int-to-float v7, v3

    int-to-float v8, v2

    div-float/2addr v7, v8

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-set6(Lcom/android/bluetooth/gatt/ScanManager;I)I

    :cond_4
    :goto_2
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numNonCustomRegularScanClients()I

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeOpporFilters()V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get7(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mLowPowerScanValue:I

    iget-object v7, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v7}, Lcom/android/bluetooth/gatt/ScanManager;->-get11(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v7

    if-le v6, v7, :cond_3

    const/16 v5, 0x1f4

    const/16 v4, 0x1388

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-set8(Lcom/android/bluetooth/gatt/ScanManager;I)I

    invoke-static {v5}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v5

    invoke-static {v4}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v4

    invoke-direct {p0, v9}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lcd off, - scanInterval = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - scanWindow = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    iget v6, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-direct {p0, v6, v4, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattSetScanParametersNative(III)V

    invoke-direct {p0, v11}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6, v1}, Lcom/android/bluetooth/gatt/ScanManager;->-set5(Lcom/android/bluetooth/gatt/ScanManager;I)I

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6, v9}, Lcom/android/bluetooth/gatt/ScanManager;->-set6(Lcom/android/bluetooth/gatt/ScanManager;I)I

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6, v9}, Lcom/android/bluetooth/gatt/ScanManager;->-set7(Lcom/android/bluetooth/gatt/ScanManager;I)I

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6, v9}, Lcom/android/bluetooth/gatt/ScanManager;->-set4(Lcom/android/bluetooth/gatt/ScanManager;I)I

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v7, "configureRegularScanParams() - queue emtpy, scan stopped"

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    goto :goto_2
.end method

.method flushBatchResults(I)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "flushPendingBatchResults - clientIf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    if-eq v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientReadScanReportsNative(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    if-eq v0, v3, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientReadScanReportsNative(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->setBatchAlarm()V

    return-void
.end method

.method getAggressiveClient(Ljava/util/Set;)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;)",
            "Lcom/android/bluetooth/gatt/ScanClient;"
        }
    .end annotation

    const/16 v11, 0x64

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    const/high16 v2, -0x80000000

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget-object v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v7

    if-eq v7, v11, :cond_1

    if-eq v2, v11, :cond_1

    iget-object v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v7

    if-le v7, v2, :cond_0

    move-object v5, v0

    iget-object v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v6

    const/high16 v3, -0x80000000

    const/high16 v4, -0x80000000

    const-string/jumbo v7, "BtGatt.ScanManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "custom scan scanMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v6, :sswitch_data_0

    const-string/jumbo v7, "BtGatt.ScanManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid value for scanMode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->SCAN_MODE_SAMSUNG_QUICK_CONNECT:I

    :goto_1
    sparse-switch v2, :sswitch_data_1

    const-string/jumbo v7, "BtGatt.ScanManager"

    const-string/jumbo v8, "default value of curScanSetting 0 is choosen"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_2
    const-string/jumbo v7, "BtGatt.ScanManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newScanMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "newcurScanSetting = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v3, v4, :cond_0

    const-string/jumbo v7, "BtGatt.ScanManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "comparing = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " with = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings;->getCustomScanInterval()I

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings;->getCustomScanWindow()I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->customParamChanged:Z

    iget-object v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings;->getCustomScanWindow()I

    move-result v7

    iput v7, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->SCAN_MODE_QUICK_CONNECT_WINDOW_MS:I

    iget-object v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings;->getCustomScanInterval()I

    move-result v7

    iput v7, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->SCAN_MODE_QUICK_CONNECT_INTERVAL_MS:I

    :cond_2
    move-object v5, v0

    move v2, v6

    goto/16 :goto_0

    :sswitch_0
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_1
    const/16 v3, 0x28

    goto/16 :goto_1

    :sswitch_2
    const/16 v3, 0x64

    goto/16 :goto_1

    :sswitch_3
    iget-object v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings;->getCustomScanInterval()I

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings;->getCustomScanWindow()I

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "BtGatt.ScanManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "New scan mode custom scan scanInterval = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v9}, Landroid/bluetooth/le/ScanSettings;->getCustomScanInterval()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "scanWindow = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v9}, Landroid/bluetooth/le/ScanSettings;->getCustomScanWindow()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings;->getCustomScanWindow()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v8}, Landroid/bluetooth/le/ScanSettings;->getCustomScanInterval()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->SCAN_MODE_SAMSUNG_QUICK_CONNECT:I

    :cond_3
    iget v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->SCAN_MODE_SAMSUNG_QUICK_CONNECT:I

    goto/16 :goto_1

    :sswitch_4
    const/16 v4, 0xa

    goto/16 :goto_2

    :sswitch_5
    const/16 v4, 0x28

    goto/16 :goto_2

    :sswitch_6
    const/16 v4, 0x64

    goto/16 :goto_2

    :sswitch_7
    if-eqz v5, :cond_4

    iget-object v7, v5, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings;->getCustomScanInterval()I

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v5, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings;->getCustomScanWindow()I

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "BtGatt.ScanManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "current scan mode custom scan scanInterval = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v9}, Landroid/bluetooth/le/ScanSettings;->getCustomScanInterval()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "scanWindow = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v9}, Landroid/bluetooth/le/ScanSettings;->getCustomScanWindow()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v5, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings;->getCustomScanWindow()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v5, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v8}, Landroid/bluetooth/le/ScanSettings;->getCustomScanInterval()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->SCAN_MODE_SAMSUNG_QUICK_CONNECT:I

    :cond_4
    iget v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->SCAN_MODE_SAMSUNG_QUICK_CONNECT:I

    goto/16 :goto_2

    :cond_5
    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method getRegularScanClient(I)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 3

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method handleLcdOffIntent()V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleLcdOffIntent : thresholdScanValue is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mLowPowerScanValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mLastConfiguredScanValue ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v8}, Lcom/android/bluetooth/gatt/ScanManager;->-get11(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get11(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v6

    iget v7, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mLowPowerScanValue:I

    if-le v6, v7, :cond_1

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ClientIf = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const/16 v5, 0x1f4

    const/16 v4, 0x1388

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const v7, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-set8(Lcom/android/bluetooth/gatt/ScanManager;I)I

    invoke-static {v5}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v5

    invoke-static {v4}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v4

    invoke-direct {p0, v9}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleLcdOffIntent - scanInterval = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - scanWindow = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    invoke-direct {p0, v2, v4, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattSetScanParametersNative(III)V

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    :cond_1
    return-void
.end method

.method handleLcdOnIntent()V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v7, "handleLcdOnIntent"

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get13(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v6

    iget-object v7, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v7}, Lcom/android/bluetooth/gatt/ScanManager;->-get11(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v7

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v2, 0x0

    if-lez v3, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ClientIf = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get12(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v5

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get9(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v4

    invoke-direct {p0, v9}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleLcdOnIntent - scanInterval = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - scanWindow = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    invoke-direct {p0, v2, v4, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattSetScanParametersNative(III)V

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    :cond_1
    return-void
.end method

.method regularScanTimeout()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v3, "regularScanTimeout"

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isExemptFromScanDowngrade(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "BtGatt.ScanManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Moving scan client to opportunistic (clientIf "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->setOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)V

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/AppScanStats;->setScanTimeout()V

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get17(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/GattService;->setRegularScanTimeout(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numNonCustomRegularScanClients()I

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeOpporFilters()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureRegularScanParams()V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numRegularScanClients()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v3, "stop scan"

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    :cond_4
    return-void
.end method

.method setOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 4

    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanResultType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings;->getNumOfMatches()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    iput-object v2, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/bluetooth/gatt/ScanClient;->oppoFilterConfigured:Z

    return-void
.end method

.method startBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap0(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->initFilterIndexStack()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureScanFilters(Lcom/android/bluetooth/gatt/ScanClient;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    :cond_1
    return-void
.end method

.method startRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap0(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->initFilterIndexStack()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap0(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numNonCustomRegularScanClients()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numRegularScanClients()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->oppoFilterConfigured:Z

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureScanFilters(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0
.end method

.method stopBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeScanFilters(I)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    :cond_0
    return-void
.end method

.method stopRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    iget-object v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/ScanFilter;

    iget-object v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-direct {p0, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getNumOfTrackingAdvertisements(Landroid/bluetooth/le/ScanSettings;)I

    move-result v2

    invoke-direct {p0, v2, v8}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->manageAllocationOfTrackingAdvertisement(IZ)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "BtGatt.ScanManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error freeing for onfound/onlost filter resources "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v5}, Lcom/android/bluetooth/gatt/ScanManager;->-get17(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v5

    iget v6, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/android/bluetooth/gatt/GattService;->onScanManagerErrorCallback(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "BtGatt.ScanManager"

    const-string/jumbo v6, "failed on onScanManagerCallback at freeing"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v5}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numRegularScanClients()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v6, "stop scan"

    invoke-static {v5, v6}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->oppoFilterConfigured:Z

    if-nez v5, :cond_4

    return-void

    :cond_4
    iget v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-direct {p0, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeScanFilters(I)V

    return-void
.end method
