.class Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
.super Ljava/lang/Object;
.source "ServiceDeclaration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ServiceDeclaration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field advertisePreferred:Z

.field instance:I

.field permissions:I

.field properties:I

.field serviceHandle:I

.field serviceType:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ServiceDeclaration;

.field type:B

.field uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;I)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->this$0:Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceHandle:I

    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    iput-object p2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    iput p3, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;II)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->this$0:Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceHandle:I

    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    iput-object p2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    iput p4, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    iput p3, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;III)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->this$0:Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceHandle:I

    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    iput-object p2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    iput p5, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    iput p4, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    iput p3, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;IIZ)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->this$0:Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceHandle:I

    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    iput-object p2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    iput p4, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    iput p3, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    iput-boolean p5, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    return-void
.end method
