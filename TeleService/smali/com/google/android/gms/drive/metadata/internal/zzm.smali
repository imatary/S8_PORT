.class public Lcom/google/android/gms/drive/metadata/internal/zzm;
.super Lcom/google/android/gms/drive/metadata/internal/zzj;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/drive/metadata/MetadataField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzj",
        "<",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;",
        "Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField",
        "<",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzasT:Lcom/google/android/gms/drive/metadata/internal/zze$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzm$1;

    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/zzm$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/zzm;->zzasT:Lcom/google/android/gms/drive/metadata/internal/zze$zza;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const-string/jumbo v0, "parents"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "parentsExtra"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "dbInstanceId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "parentsExtraHolder"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/drive/metadata/internal/zzj;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method protected synthetic zzn(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzm;->zzs(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected zzs(Landroid/os/Bundle;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzs(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :cond_0
    return-object v0
.end method
