.class public Lcom/google/android/gms/location/places/internal/zzp;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/location/places/PlacePhotoMetadata;


# instance fields
.field private mIndex:I

.field private final zzDF:I

.field private final zzDG:I

.field private final zzaQR:Ljava/lang/String;

.field private final zzaQS:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzaQR:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzDF:I

    iput p3, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzDG:I

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzaQS:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/google/android/gms/location/places/internal/zzp;->mIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/zzp;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/location/places/internal/zzp;

    iget v2, p1, Lcom/google/android/gms/location/places/internal/zzp;->zzDF:I

    iget v3, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzDF:I

    if-eq v2, v3, :cond_4

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
    iget v2, p1, Lcom/google/android/gms/location/places/internal/zzp;->zzDG:I

    iget v3, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzDG:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/location/places/internal/zzp;->zzaQR:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzaQR:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/location/places/internal/zzp;->zzaQS:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzaQS:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzp;->zzzz()Lcom/google/android/gms/location/places/PlacePhotoMetadata;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzDF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzDG:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzaQR:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzaQS:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public zzzz()Lcom/google/android/gms/location/places/PlacePhotoMetadata;
    .locals 0

    return-object p0
.end method
