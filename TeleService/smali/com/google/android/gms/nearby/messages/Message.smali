.class public Lcom/google/android/gms/nearby/messages/Message;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/Message;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbbz:[Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;


# instance fields
.field private final content:[B

.field private final type:Ljava/lang/String;

.field final versionCode:I

.field private final zzamD:Ljava/lang/String;

.field private final zzbbA:[Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/nearby/messages/zza;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->zzbcd:Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/nearby/messages/Message;->zzbbz:[Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    return-void
.end method

.method constructor <init>(I[BLjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;)V
    .locals 8

    const/16 v7, 0x20

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/Message;->versionCode:I

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    if-eqz p3, :cond_1

    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/Message;->zzamD:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->zzamD:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/gms/nearby/messages/Message;->zzR(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    const v3, 0x19000

    if-le v0, v3, :cond_4

    move v0, v1

    :goto_1
    const-string/jumbo v3, "Content length(%d) must not exceed MAX_CONTENT_SIZE_BYTES(%d)"

    new-array v4, v6, [Ljava/lang/Object;

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const v5, 0x19000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    if-nez p5, :cond_5

    :cond_0
    sget-object p5, Lcom/google/android/gms/nearby/messages/Message;->zzbbz:[Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    :goto_3
    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/Message;->zzbbA:[Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_6

    move v0, v1

    :goto_4
    const-string/jumbo v3, "Type length(%d) must not exceed MAX_TYPE_LENGTH(%d)"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string/jumbo p3, ""

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    move v0, v1

    :goto_5
    const-string/jumbo v3, "Content must be null for a device presence message."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_5

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    array-length v0, p5

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4
.end method

.method public static zzR(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "__reserved_namespace"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "__device_presence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/nearby/messages/Message;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/nearby/messages/Message;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/Message;->zzamD:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/Message;->zzamD:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public getContent()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->zzamD:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/Message;->zzamD:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Message{namespace=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/Message;->zzamD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", content=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    array-length v0, v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bytes]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", devices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/Message;->zzEn()[Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/zza;->zza(Lcom/google/android/gms/nearby/messages/Message;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzEn()[Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->zzbbA:[Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    return-object v0
.end method
