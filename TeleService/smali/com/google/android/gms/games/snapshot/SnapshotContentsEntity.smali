.class public final Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/snapshot/SnapshotContents;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotContentsEntityCreator;

.field private static final zzaKK:Ljava/lang/Object;


# instance fields
.field private final mVersionCode:I

.field private zzara:Lcom/google/android/gms/drive/Contents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zzaKK:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotContentsEntityCreator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/Contents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zzara:Lcom/google/android/gms/drive/Contents;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->mVersionCode:I

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zzara:Lcom/google/android/gms/drive/Contents;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntityCreator;->zza(Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzsx()Lcom/google/android/gms/drive/Contents;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zzara:Lcom/google/android/gms/drive/Contents;

    return-object v0
.end method
