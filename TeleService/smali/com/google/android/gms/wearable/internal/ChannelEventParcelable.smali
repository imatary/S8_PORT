.class public final Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;
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
            "Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final type:I

.field final zzbsa:I

.field final zzbsb:I

.field final zzbsc:Lcom/google/android/gms/wearable/internal/ChannelImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/wearable/internal/ChannelImpl;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;->zzbsc:Lcom/google/android/gms/wearable/internal/ChannelImpl;

    iput p3, p0, Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;->type:I

    iput p4, p0, Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;->zzbsa:I

    iput p5, p0, Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;->zzbsb:I

    return-void
.end method

.method private static zzlG(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "CHANNEL_OPENED"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "CHANNEL_CLOSED"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "OUTPUT_CLOSED"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "INPUT_CLOSED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static zzlH(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "CLOSE_REASON_DISCONNECTED"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "CLOSE_REASON_REMOTE_CLOSE"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "CLOSE_REASON_LOCAL_CLOSE"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "CLOSE_REASON_NORMAL"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChannelEventParcelable[versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;->zzbsc:Lcom/google/android/gms/wearable/internal/ChannelImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;->type:I

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;->zzlG(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", closeReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;->zzbsa:I

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;->zzlH(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;->zzbsb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzn;->zza(Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;Landroid/os/Parcel;I)V

    return-void
.end method
