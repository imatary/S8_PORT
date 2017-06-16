.class Lcom/android/bluetooth/gatt/ScanClient;
.super Ljava/lang/Object;
.source "ScanClient.java"


# static fields
.field private static final DEFAULT_SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;


# instance fields
.field appDied:Z

.field clientIf:I

.field filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field hasLocationPermission:Z

.field hasPeersMacAddressPermission:Z

.field isServer:Z

.field legacyForegroundApp:Z

.field settings:Landroid/bluetooth/le/ScanSettings;

.field stats:Lcom/android/bluetooth/gatt/AppScanStats;

.field storages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field uuids:[Ljava/util/UUID;

.field workSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/gatt/ScanClient;->DEFAULT_SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 8

    const/4 v5, 0x0

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/util/UUID;

    sget-object v4, Lcom/android/bluetooth/gatt/ScanClient;->DEFAULT_SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/util/UUID;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/os/WorkSource;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/util/UUID;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/util/UUID;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(IZ[Ljava/util/UUID;)V
    .locals 8

    const/4 v5, 0x0

    sget-object v4, Lcom/android/bluetooth/gatt/ScanClient;->DEFAULT_SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(IZ[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/util/UUID;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/os/WorkSource;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    iput p1, p0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    iput-boolean p2, p0, Lcom/android/bluetooth/gatt/ScanClient;->isServer:Z

    iput-object p3, p0, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    iput-object p4, p0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    iput-object p5, p0, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    iput-object p6, p0, Lcom/android/bluetooth/gatt/ScanClient;->workSource:Landroid/os/WorkSource;

    iput-object p7, p0, Lcom/android/bluetooth/gatt/ScanClient;->storages:Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/ScanClient;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget v3, p0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    iget v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
