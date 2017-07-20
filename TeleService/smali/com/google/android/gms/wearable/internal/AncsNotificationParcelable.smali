.class public Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;
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
            "Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field final mVersionCode:I

.field private zzTJ:Ljava/lang/String;

.field private zzWQ:Ljava/lang/String;

.field private final zzaDH:Ljava/lang/String;

.field private final zzaUa:Ljava/lang/String;

.field private final zzaaH:Ljava/lang/String;

.field private final zzapg:Ljava/lang/String;

.field private final zzbrH:Ljava/lang/String;

.field private zzbrI:B

.field private zzbrJ:B

.field private zzbrK:B

.field private zzbrL:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BBBBLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mId:I

    iput p1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mVersionCode:I

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaUa:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrH:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaaH:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzapg:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaDH:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzWQ:Ljava/lang/String;

    int-to-byte v0, p9

    iput-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrI:B

    int-to-byte v0, p10

    iput-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrJ:B

    int-to-byte v0, p11

    iput-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrK:B

    int-to-byte v0, p12

    iput-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrL:B

    iput-object p13, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzTJ:Ljava/lang/String;

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

    check-cast p1, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrL:B

    iget-byte v1, p1, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrL:B

    if-ne v0, v1, :cond_4

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrK:B

    iget-byte v1, p1, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrK:B

    if-ne v0, v1, :cond_5

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrJ:B

    iget-byte v1, p1, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrJ:B

    if-ne v0, v1, :cond_6

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrI:B

    iget-byte v1, p1, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrI:B

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mId:I

    iget v1, p1, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mId:I

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mVersionCode:I

    iget v1, p1, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mVersionCode:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaUa:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaUa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrH:Ljava/lang/String;

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrH:Ljava/lang/String;

    if-nez v0, :cond_c

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzWQ:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzWQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaaH:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaaH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaDH:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaDH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzapg:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzapg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v3

    :cond_4
    return v2

    :cond_5
    return v2

    :cond_6
    return v2

    :cond_7
    return v2

    :cond_8
    return v2

    :cond_9
    return v2

    :cond_a
    return v2

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrH:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_c
    return v2

    :cond_d
    return v2

    :cond_e
    return v2

    :cond_f
    return v2

    :cond_10
    return v2
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzWQ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzWQ:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaUa:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzTJ:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzapg:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mVersionCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaUa:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrH:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaaH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzapg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaDH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzWQ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrI:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrJ:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrK:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrL:B

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AncsNotificationParcelable{mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAppId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaUa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDateTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mNotificationText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaaH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzapg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSubtitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaDH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDisplayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzWQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrI:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEventFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrJ:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCategoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrK:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCategoryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrL:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzh;->zza(Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzIB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrH:Ljava/lang/String;

    return-object v0
.end method

.method public zzIC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaaH:Ljava/lang/String;

    return-object v0
.end method

.method public zzID()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrI:B

    return v0
.end method

.method public zzIE()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrJ:B

    return v0
.end method

.method public zzIF()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrK:B

    return v0
.end method

.method public zzIG()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzbrL:B

    return v0
.end method

.method public zzwK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaUa:Ljava/lang/String;

    return-object v0
.end method

.method public zzwc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaDH:Ljava/lang/String;

    return-object v0
.end method
