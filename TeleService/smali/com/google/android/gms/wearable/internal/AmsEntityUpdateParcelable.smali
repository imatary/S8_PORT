.class public Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;
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
            "Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:Ljava/lang/String;

.field final mVersionCode:I

.field private zzbrF:B

.field private final zzbrG:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IBBLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->zzbrF:B

    iput p1, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->mVersionCode:I

    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->zzbrG:B

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eq p0, p1, :cond_1

    if-nez p1, :cond_2

    :cond_0
    return v2

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->zzbrF:B

    iget-byte v1, p1, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->zzbrF:B

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->mVersionCode:I

    iget v1, p1, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->mVersionCode:I

    if-ne v0, v1, :cond_4

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->zzbrG:B

    iget-byte v1, p1, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->zzbrG:B

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->mValue:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :cond_3
    return v2

    :cond_4
    return v2

    :cond_5
    return v2

    :cond_6
    return v2
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->mVersionCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->zzbrF:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->zzbrG:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AmsEntityUpdateParcelable{mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEntityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->zzbrF:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAttributeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->zzbrG:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzf;->zza(Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzIA()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->zzbrG:B

    return v0
.end method

.method public zzIz()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;->zzbrF:B

    return v0
.end method
