.class Lcom/android/bluetooth/gatt/HandleMap$Entry;
.super Ljava/lang/Object;
.source "HandleMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/HandleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field advertisePreferred:Z

.field charHandle:I

.field handle:I

.field instance:I

.field serverIf:I

.field serviceHandle:I

.field serviceType:I

.field started:Z

.field final synthetic this$0:Lcom/android/bluetooth/gatt/HandleMap;

.field type:I

.field uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IIILjava/util/UUID;I)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    iput p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    iput-object p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IIILjava/util/UUID;II)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    iput p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    iput-object p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    iput p7, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IILjava/util/UUID;II)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    iput-object p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    iput p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IILjava/util/UUID;IIZ)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    iput-object p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    iput p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    iput-boolean p7, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    return-void
.end method
