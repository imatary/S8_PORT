.class public final Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/messages/MessageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zzbbC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;",
            ">;"
        }
    .end annotation
.end field

.field private zzbbD:Z

.field private final zzbbE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/MessageType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbbE:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbbC:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/messages/MessageFilter;
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbbD:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "At least one of the include methods must be called."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/nearby/messages/MessageFilter;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbbE:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbbC:Ljava/util/List;

    iget-boolean v3, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbbD:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/nearby/messages/MessageFilter;-><init>(Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/nearby/messages/MessageFilter$1;)V

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbbE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public includeAllMyTypes()Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbbD:Z

    return-object p0
.end method
