.class public Lcom/google/android/gms/internal/zznn;
.super Lcom/google/android/gms/drive/metadata/internal/zzk;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzk",
        "<",
        "Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzatL:Lcom/google/android/gms/drive/metadata/internal/zze$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zznn$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zznn$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zznn;->zzatL:Lcom/google/android/gms/drive/metadata/internal/zze$zza;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "customProperties"

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "hasCustomProperties"

    aput-object v2, v1, v4

    const-string/jumbo v2, "sqlId"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "customPropertiesExtra"

    aput-object v3, v2, v4

    const-string/jumbo v3, "customPropertiesExtraHolder"

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/drive/metadata/internal/zzk;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method
