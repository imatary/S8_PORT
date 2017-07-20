.class public Lcom/google/android/gms/cast/CastDevice;
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
            "Lcom/google/android/gms/cast/CastDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private zzBc:I

.field private zzZT:Ljava/lang/String;

.field zzZU:Ljava/lang/String;

.field private zzZV:Ljava/net/Inet4Address;

.field private zzZW:Ljava/lang/String;

.field private zzZX:Ljava/lang/String;

.field private zzZY:Ljava/lang/String;

.field private zzZZ:I

.field private zzaaa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field

.field private zzaab:I

.field private zzaac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/CastDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move v10, v7

    move-object v11, v2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/cast/CastDevice;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;IILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;IILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/cast/CastDevice;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/cast/CastDevice;->zzbZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZT:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/cast/CastDevice;->zzbZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZU:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZU:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-static {p4}, Lcom/google/android/gms/cast/CastDevice;->zzbZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZW:Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/cast/CastDevice;->zzbZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZX:Ljava/lang/String;

    invoke-static {p6}, Lcom/google/android/gms/cast/CastDevice;->zzbZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZY:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/cast/CastDevice;->zzZZ:I

    if-nez p8, :cond_1

    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iput-object p8, p0, Lcom/google/android/gms/cast/CastDevice;->zzaaa:Ljava/util/List;

    iput p9, p0, Lcom/google/android/gms/cast/CastDevice;->zzaab:I

    iput p10, p0, Lcom/google/android/gms/cast/CastDevice;->zzBc:I

    invoke-static {p11}, Lcom/google/android/gms/cast/CastDevice;->zzbZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzaac:Ljava/lang/String;

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZU:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/Inet4Address;

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZV:Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CastDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to convert host address ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->zzZU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") to ipaddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static zzbZ(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const-string/jumbo p0, ""

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

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/cast/CastDevice;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/cast/CastDevice;

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->zzZT:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->zzZT:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->zzZT:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_0
    :goto_0
    move v1, v0

    :cond_1
    return v1

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/cast/CastDevice;->zzZT:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->zzZV:Ljava/net/Inet4Address;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->zzZV:Ljava/net/Inet4Address;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->zzZX:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->zzZX:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->zzZW:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->zzZW:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->zzZY:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->zzZY:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->zzZZ:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->zzZZ:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->zzaaa:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->zzaaa:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->zzaab:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->zzaab:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->zzBc:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->zzBc:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->zzaac:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->zzaac:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzaab:I

    return v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZY:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZW:Ljava/lang/String;

    return-object v0
.end method

.method public getIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzaaa:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZX:Ljava/lang/String;

    return-object v0
.end method

.method public getServicePort()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZZ:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzBc:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZT:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "\"%s\" (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->zzZW:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->zzZT:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/zzb;->zza(Lcom/google/android/gms/cast/CastDevice;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzny()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzZT:Ljava/lang/String;

    return-object v0
.end method

.method public zznz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->zzaac:Ljava/lang/String;

    return-object v0
.end method
